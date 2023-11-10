part of 'pengambilan_kk_bloc.dart';

@freezed
class PengambilanKkState with _$PengambilanKkState {
  const factory PengambilanKkState.initial() = _Initial;
  const factory PengambilanKkState.loading() = _loading;
  const factory PengambilanKkState.loaded(KartuKuningMod data) = _Loaded;
  const factory PengambilanKkState.loadedUser(UserKk data) = _LoadedUser;
  const factory PengambilanKkState.loadedPengajuan(FormulirKk data) = _LoadedPengajuan;
  const factory PengambilanKkState.error(NetworkExceptions error) = _Error;
}
