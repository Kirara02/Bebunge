part of 'jadwal_shalat_bloc.dart';

@freezed
class JadwalShalatState with _$JadwalShalatState {
  const factory JadwalShalatState.initial() = _Initial;
  const factory JadwalShalatState.loading() = _Loading;
  const factory JadwalShalatState.loaded(JadwalShalatMod data) = _Loaded;
  const factory JadwalShalatState.error(NetworkExceptions error) = _Error;
}
