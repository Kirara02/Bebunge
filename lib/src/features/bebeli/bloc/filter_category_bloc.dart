import 'package:bebunge/src/core/api_result.dart';
import 'package:bebunge/src/network/repositories/bebeli_repository_impl.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/network_exceptions.dart';
import '../../../network/model/bebeli/bebeli_filter_cat.dart';

part 'filter_category_event.dart';
part 'filter_category_state.dart';
part 'filter_category_bloc.freezed.dart';

class FilterCategoryBloc
    extends Bloc<FilterCategoryEvent, FilterCategoryState> {
  FilterCategoryBloc() : super(_Initial()) {
    on<FilterCategoryEvent>((event, emit) async {
      await event.when(
        started: (id, text) async {
          emit(FilterCategoryState.loading());
          final ApiResult<List<BebeliFilterCat>> apiResult =
              await BebeliRepositoryImpl().getListCategory(id: id, text: text);

          apiResult.when(
            success: (data) => emit(FilterCategoryState.loaded(data)),
            failure: (error) => emit(FilterCategoryState.error(error)),
          );
        },
      );
    });
  }
}
