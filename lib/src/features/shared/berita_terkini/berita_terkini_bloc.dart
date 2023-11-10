import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

import '../../../core/api_result.dart';
import '../../../core/network_exceptions.dart';
import '../../../network/model/berita/berita_detail.dart';
import '../../../network/model/berita/berita_paging.dart';
import '../../../network/repositories/berita_repository_impl.dart';

part 'berita_terkini_bloc.freezed.dart';
part 'berita_terkini_event.dart';
part 'berita_terkini_state.dart';

class BeritaTerkiniBloc extends Bloc<BeritaTerkiniEvent, BeritaTerkiniState> {
  BeritaTerkiniBloc() : super(BeritaTerkiniState.initial()) {
    on<BeritaTerkiniEvent>((event, emit) async {
      await event.when(
        started: (int pageNumber, bool show) async {
          emit(BeritaTerkiniState.loading());
          final ApiResult<BeritaPaging> apiResult = await BeritaRepositoryImpl()
              .beritaTerkini(page: pageNumber.toString(), showContent: show);
          apiResult.when(
            success: (data) => emit(BeritaTerkiniState.loaded(
                data: data.data ?? [],
                nextPage:
                    data.page!.number == data.page!.totalpage ? false : true,
                currentPage: pageNumber)),
            failure: (
              error,
            ) =>
                emit(BeritaTerkiniState.Error(error)),
          );
        },
      );
    });
  }
  @override
  void onEvent(BeritaTerkiniEvent event) {
    Logger().d(event);
    super.onEvent(event);
  }

  @override
  void onChange(Change<BeritaTerkiniState> change) {
    Logger().d(change);
    super.onChange(change);
  }
}
