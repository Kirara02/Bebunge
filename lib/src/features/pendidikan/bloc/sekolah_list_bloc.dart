import 'package:bebunge/src/core/api_result.dart';
import 'package:bebunge/src/network/model/pendidikan/sekolah_paging.dart';
import 'package:bebunge/src/network/repositories/pendidikan_repository_impl.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

import '../../../core/network_exceptions.dart';
import '../../../network/model/pendidikan/pendidikan_params.dart';
import '../../../network/model/pendidikan/sekolah_detail.dart';

part 'sekolah_list_event.dart';
part 'sekolah_list_state.dart';
part 'sekolah_list_bloc.freezed.dart';

class SekolahListBloc extends Bloc<SekolahListEvent, SekolahListState> {
  SekolahListBloc() : super(_Initial()) {
    on<SekolahListEvent>((event, emit) async {
      await event.when(
        started: (params) async {
          emit(SekolahListState.loading());
          final ApiResult<SekolahPaging> apiResult =
              await PendidikanRepositoryImpl().getSekolahList(
                  page: params.page,
                  kategori: params.category,
                  search: params.search);

          apiResult.when(success: (data) {
            Logger().e(data.data);
            emit(SekolahListState.loaded(
                int.tryParse(params.page!)!, data.page!.morepage!, data.data!));
          }, failure: (error) {
            Logger().e(error);
            emit(SekolahListState.error(error));
          });
        },
      );
    });
  }
  @override
  void onEvent(SekolahListEvent event) {
    Logger().d(event);
    super.onEvent(event);
  }

  @override
  void onChange(Change<SekolahListState> change) {
    Logger().d(change);
    super.onChange(change);
  }
}
