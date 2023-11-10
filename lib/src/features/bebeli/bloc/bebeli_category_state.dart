part of 'bebeli_category_bloc.dart';

@freezed
class BebeliCategoryState with _$BebeliCategoryState {
  const factory BebeliCategoryState.initial() = _Initial;
  const factory BebeliCategoryState.loading() = _Loading;
  const factory BebeliCategoryState.loaded(List<BebeliCategorySlide> data) =
      _Loaded;
  const factory BebeliCategoryState.error(NetworkExceptions error) = _Error;
}
