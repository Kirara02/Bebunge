import 'package:bebunge/src/core/api_result.dart';
import 'package:bebunge/src/network/repositories/bebeli_repository_impl.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

import '../../../core/network_exceptions.dart';
import '../../../network/model/bebeli/bebeli_filter_sub_cat.dart';

part 'filter_sub_category_event.dart';
part 'filter_sub_category_state.dart';
part 'filter_sub_category_bloc.freezed.dart';

class FilterSubCategoryBloc
    extends Bloc<FilterSubCategoryEvent, FilterSubCategoryState> {
  FilterSubCategoryBloc() : super(_Initial()) {
    on<FilterSubCategoryEvent>((event, emit) async {
      await event.when(
        started: (id, text, kategori) async {
          emit(FilterSubCategoryState.loading());
          final ApiResult<List<BebeliFilterSubCat>> apiResult =
              await BebeliRepositoryImpl()
                  .getListSubCategory(id: id, text: text, kategori: kategori);
          apiResult.when(
            success: (data) => emit(FilterSubCategoryState.loaded(data)),
            failure: (error) => emit(FilterSubCategoryState.loading()),
          );
        },
      );
    });
  }
  @override
  void onEvent(FilterSubCategoryEvent event) {
    Logger().d(event);
    super.onEvent(event);
  }

  @override
  void onChange(Change<FilterSubCategoryState> change) {
    Logger().d(change);
    super.onChange(change);
  }
}
