part of 'about_bloc.dart';

@freezed
class AboutEvent with _$AboutEvent {
  const factory AboutEvent.startedSejarah() = _StartedSejarah;
  const factory AboutEvent.startedKependudukan() = _StartedKependudukan;
  const factory AboutEvent.startedGeografis() = _StartedGeografis;
}
