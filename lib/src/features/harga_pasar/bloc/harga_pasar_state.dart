part of 'harga_pasar_bloc.dart';

@freezed
class HargaPasarState with _$HargaPasarState {
  const factory HargaPasarState.initial() = _Initial;
  const factory HargaPasarState.loading() = _Loading;
  const factory HargaPasarState.loaded(List<HargaPasarMod> data) = _Loaded;
  const factory HargaPasarState.error(NetworkExceptions error) = _Error;
}
