import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/api_result.dart';
import '../../../core/network_exceptions.dart';
import '../../../network/model/berita/berita_detail.dart';
import '../../../network/repositories/berita_repository_impl.dart';

part 'berita_detail_bloc.freezed.dart';
part 'berita_detail_event.dart';
part 'berita_detail_state.dart';

class BeritaDetailBloc extends Bloc<BeritaDetailEvent, BeritaDetailState> {
  BeritaDetailBloc() : super(BeritaDetailState.initial()) {
    on<BeritaDetailEvent>((event, emit) async {
      await event.when(
        started: (beritaId) async {
          emit(BeritaDetailState.loading());
          final ApiResult<BeritaDetailDto> apiResult =
              await BeritaRepositoryImpl()
                  .beritaDetail(beritaId: event.beritaId);
          await Future.delayed(Duration(milliseconds: 2000));
          apiResult.when(
            success: (data) => emit(BeritaDetailState.loaded(data)),
            failure: (error) => emit(BeritaDetailState.error(error)),
          );
        },
      );
    });
  }
}
