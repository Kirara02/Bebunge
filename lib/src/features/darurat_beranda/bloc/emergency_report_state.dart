part of 'emergency_report_bloc.dart';

@freezed
class EmergencyReportState with _$EmergencyReportState {
  const factory EmergencyReportState.initial() = _Initial;
  const factory EmergencyReportState.loading() = _Loading;
  const factory EmergencyReportState.loaded(Response data) = _Loaded;
  const factory EmergencyReportState.error(NetworkExceptions error) = _Error;
}
