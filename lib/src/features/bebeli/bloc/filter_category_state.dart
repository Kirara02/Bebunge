part of 'filter_category_bloc.dart';

@freezed
class FilterCategoryState with _$FilterCategoryState {
  const factory FilterCategoryState.initial() = _Initial;
  const factory FilterCategoryState.loading() = _Loading;
  const factory FilterCategoryState.loaded(List<BebeliFilterCat> data) =
      _Loaded;
  const factory FilterCategoryState.error(NetworkExceptions error) = _Error;
}
