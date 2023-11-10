part of 'jadwal_shalat_bloc.dart';

@freezed
class JadwalShalatEvent with _$JadwalShalatEvent {
  const factory JadwalShalatEvent.started({String? lat, String? long}) =
      _Started;
}
