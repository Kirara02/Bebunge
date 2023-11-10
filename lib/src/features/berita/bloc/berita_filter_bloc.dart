import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

import '../../../core/api_result.dart';
import '../../../core/network_exceptions.dart';
import '../../../network/model/berita/berita_detail.dart';
import '../../../network/model/berita/berita_paging.dart';
import '../../../network/model/berita/filter_params.dart';
import '../../../network/repositories/berita_repository_impl.dart';

part 'berita_filter_bloc.freezed.dart';
part 'berita_filter_event.dart';
part 'berita_filter_state.dart';

class BeritaFilterBloc extends Bloc<BeritaFilterEvent, BeritaFilterState> {
  BeritaFilterBloc() : super(BeritaFilterState.initial()) {
    on<BeritaFilterEvent>((event, emit) async {
      await event.when(
        started: (filter) async {
          emit(BeritaFilterState.loading());
          final ApiResult<BeritaPaging> apiResult = await BeritaRepositoryImpl()
              .beritaFilter(
                  kategori: filter.kategori,
                  limit: filter.limit,
                  page: filter.page,
                  search: filter.search);
          apiResult.when(
            success: (data) => emit(BeritaFilterState.loaded(
                data.data ?? [],
                int.tryParse(filter.page ?? '1')!,
                data.page!.totalpage == data.page!.number ? false : true)),
            failure: (error) => emit(BeritaFilterState.error(error)),
          );
        },
      );
    });
  }
  @override
  void onEvent(BeritaFilterEvent event) {
    Logger().d(event);
    super.onEvent(event);
  }

  @override
  void onChange(Change<BeritaFilterState> change) {
    Logger().d(change);
    super.onChange(change);
  }
}
