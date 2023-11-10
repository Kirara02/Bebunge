import 'package:bebunge/src/core/api_result.dart';
import 'package:bebunge/src/network/repositories/fasilitas_repository_impl.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/network_exceptions.dart';
import '../../../network/model/fasilitas/fasilitas_sub_item.dart';

part 'fasilitas_sub_event.dart';
part 'fasilitas_sub_state.dart';
part 'fasilitas_sub_bloc.freezed.dart';

class FasilitasSubBloc extends Bloc<FasilitasSubEvent, FasilitasSubState> {
  FasilitasSubBloc() : super(_Initial()) {
    on<FasilitasSubEvent>((event, emit) async {
      await event.when(
        started: (id) async {
          emit(FasilitasSubState.loading());
          await Future.delayed(Duration(seconds: 2));
          final ApiResult<List<FasilitasSubItem>> apiResult =
              await FasilitasRepositoryImpl().getFasilitasSub(id: id);
          apiResult.when(
            success: (data) => emit(FasilitasSubState.loaded(data)),
            failure: (error) => emit(FasilitasSubState.error(error)),
          );
        },
      );
    });
  }
}
