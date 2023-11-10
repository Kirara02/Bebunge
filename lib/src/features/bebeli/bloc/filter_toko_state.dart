part of 'filter_toko_bloc.dart';

@freezed
class FilterTokoState with _$FilterTokoState {
  const factory FilterTokoState.initial() = _Initial;
  const factory FilterTokoState.loading() = _Loading;
  const factory FilterTokoState.loaded(List<FilterToko> data) = _Loaded;
  const factory FilterTokoState.error(NetworkExceptions error) = _Error;
}
