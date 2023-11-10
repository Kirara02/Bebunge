import 'package:bebunge/src/core/api_result.dart';
import 'package:bebunge/src/network/repositories/bebeli_repository_impl.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/network_exceptions.dart';
import '../../../network/model/bebeli/filter_toko.dart';

part 'filter_toko_event.dart';
part 'filter_toko_state.dart';
part 'filter_toko_bloc.freezed.dart';

class FilterTokoBloc extends Bloc<FilterTokoEvent, FilterTokoState> {
  FilterTokoBloc() : super(_Initial()) {
    on<FilterTokoEvent>((event, emit) async {
      await event.when(
        started: (id, toko) async {
          emit(FilterTokoState.loading());
          final ApiResult<List<FilterToko>> apiResult =
              await BebeliRepositoryImpl().getToko(id: id, toko: toko);
          apiResult.when(
            success: (data) => emit(FilterTokoState.loaded(data)),
            failure: (error) => emit(FilterTokoState.error(error)),
          );
        },
      );
    });
  }
}
