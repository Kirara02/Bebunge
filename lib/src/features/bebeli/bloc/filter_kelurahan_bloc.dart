import 'package:bebunge/src/core/api_result.dart';
import 'package:bebunge/src/network/repositories/bebeli_repository_impl.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/network_exceptions.dart';
import '../../../network/model/bebeli/bebeli_filter_kel.dart';

part 'filter_kelurahan_event.dart';
part 'filter_kelurahan_state.dart';
part 'filter_kelurahan_bloc.freezed.dart';

class FilterKelurahanBloc
    extends Bloc<FilterKelurahanEvent, FilterKelurahanState> {
  FilterKelurahanBloc() : super(_Initial()) {
    on<FilterKelurahanEvent>((event, emit) async {
      await event.when(
        started: (search, kecId, kelId) async {
          emit(FilterKelurahanState.loading());
          final ApiResult<List<BebeliFilterKel>> apiResult =
              await BebeliRepositoryImpl().getListKelurahan(
                  search: search, kecId: kecId ?? '3216022', kelId: kelId);

          apiResult.when(
            success: (data) => emit(FilterKelurahanState.loaded(data)),
            failure: (error) => emit(FilterKelurahanState.error(error)),
          );
        },
      );
    });
  }
}
