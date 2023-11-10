import 'package:bebunge/src/core/api_result.dart';
import 'package:bebunge/src/network/repositories/bebeli_repository_impl.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/network_exceptions.dart';
import '../../../network/model/bebeli/bebeli_filter_kec.dart';

part 'filter_kecamatan_event.dart';
part 'filter_kecamatan_state.dart';
part 'filter_kecamatan_bloc.freezed.dart';

class FilterKecamatanBloc
    extends Bloc<FilterKecamatanEvent, FilterKecamatanState> {
  FilterKecamatanBloc() : super(_Initial()) {
    on<FilterKecamatanEvent>((event, emit) async {
      await event.when(
        started: (seachText, id) async {
          emit(FilterKecamatanState.loading());
          final ApiResult<List<BebeliFilterKec>> apiResult =
              await BebeliRepositoryImpl()
                  .getListKecamatan(id: id, searchText: seachText);
          apiResult.when(
            success: (data) => emit(FilterKecamatanState.loaded(data)),
            failure: (error) => emit(FilterKecamatanState.error(error)),
          );
        },
      );
    });
  }
}
