part of 'filter_sub_category_bloc.dart';

@freezed
class FilterSubCategoryState with _$FilterSubCategoryState {
  const factory FilterSubCategoryState.initial() = _Initial;
  const factory FilterSubCategoryState.loading() = _Loading;
  const factory FilterSubCategoryState.loaded(List<BebeliFilterSubCat> data) =
      _Loaded;
  const factory FilterSubCategoryState.error(NetworkExceptions error) = _Error;
}
