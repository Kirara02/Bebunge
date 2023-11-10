part of 'emergency_report_bloc.dart';

@freezed
class EmergencyReportEvent with _$EmergencyReportEvent {
  const factory EmergencyReportEvent.started(
      {String? nama,
      String? tlp,
      String? alamat,
      String? kategoriEvent,
      String? lokasi,
      String? lat,
      String? lon}) = _Started;
}
