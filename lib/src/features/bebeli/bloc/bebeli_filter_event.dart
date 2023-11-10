part of 'bebeli_filter_bloc.dart';

@freezed
class BebeliFilterEvent with _$BebeliFilterEvent {
  const factory BebeliFilterEvent.started(BebeliParams filter) = _Started;
}
