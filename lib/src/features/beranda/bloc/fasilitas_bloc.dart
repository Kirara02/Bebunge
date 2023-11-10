import 'package:bebunge/src/core/api_result.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/network_exceptions.dart';
import '../../../network/model/fasilitas/fasilitas_item.dart';
import '../../../network/repositories/fasilitas_repository_impl.dart';

part 'fasilitas_event.dart';
part 'fasilitas_state.dart';
part 'fasilitas_bloc.freezed.dart';

class FasilitasBloc extends Bloc<FasilitasEvent, FasilitasState> {
  FasilitasBloc() : super(_Initial()) {
    on<FasilitasEvent>((event, emit) async {
      await event.when(
        started: () async {
          emit(FasilitasState.loading());
          final ApiResult<List<FasilitasItem>> apiResult =
              await FasilitasRepositoryImpl().getFasilitas();
          apiResult.when(
            success: (data) => emit(FasilitasState.loaded(data)),
            failure: (error) => emit(FasilitasState.error(error)),
          );
        },
      );
    });
  }
}
