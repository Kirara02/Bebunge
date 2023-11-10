part of 'filter_kecamatan_bloc.dart';

@freezed
class FilterKecamatanState with _$FilterKecamatanState {
  const factory FilterKecamatanState.initial() = _Initial;
  const factory FilterKecamatanState.loading() = _Loading;
  const factory FilterKecamatanState.loaded(List<BebeliFilterKec> data) =
      _Loaded;
  const factory FilterKecamatanState.error(NetworkExceptions error) = _Error;
}
