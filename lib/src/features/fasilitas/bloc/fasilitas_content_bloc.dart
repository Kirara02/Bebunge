import 'package:bebunge/src/core/api_result.dart';
import 'package:bebunge/src/network/repositories/fasilitas_repository_impl.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/network_exceptions.dart';
import '../../../network/model/fasilitas/fasilitas_content.dart';

part 'fasilitas_content_event.dart';
part 'fasilitas_content_state.dart';
part 'fasilitas_content_bloc.freezed.dart';

class FasilitasContentBloc
    extends Bloc<FasilitasContentEvent, FasilitasContentState> {
  FasilitasContentBloc() : super(_Initial()) {
    on<FasilitasContentEvent>((event, emit) async {
      await event.when(
        started: (id) async {
          emit(FasilitasContentState.loading());
          await Future.delayed(Duration(seconds: 2));
          final ApiResult<List<FasilitasContent>> apiResult =
              await FasilitasRepositoryImpl().getFasilitasContent(id: id);
          apiResult.when(
            success: (data) => emit(FasilitasContentState.loaded(data)),
            failure: (error) => emit(FasilitasContentState.error(error)),
          );
        },
      );
    });
  }
}
