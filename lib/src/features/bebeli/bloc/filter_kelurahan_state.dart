part of 'filter_kelurahan_bloc.dart';

@freezed
class FilterKelurahanState with _$FilterKelurahanState {
  const factory FilterKelurahanState.initial() = _Initial;
  const factory FilterKelurahanState.loading() = _Loading;
  const factory FilterKelurahanState.loaded(List<BebeliFilterKel> data) =
      _Loaded;
  const factory FilterKelurahanState.error(NetworkExceptions error) = _Error;
}
