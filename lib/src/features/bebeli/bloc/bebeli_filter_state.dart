part of 'bebeli_filter_bloc.dart';

@freezed
class BebeliFilterState with _$BebeliFilterState {
  const factory BebeliFilterState.initial() = _Initial;
  const factory BebeliFilterState.loading() = _Loading;
  const factory BebeliFilterState.loaded(
      int curentPage, bool nextPage, List<BebeliProduct> data) = _Loaded;
  const factory BebeliFilterState.error(NetworkExceptions error) = _Error;
}
