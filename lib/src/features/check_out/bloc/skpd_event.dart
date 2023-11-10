part of 'skpd_bloc.dart';

@freezed
class SkpdEvent with _$SkpdEvent {
  const factory SkpdEvent.started({String? skpd}) = _Started;
}
