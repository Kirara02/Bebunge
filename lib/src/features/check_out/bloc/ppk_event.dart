part of 'ppk_bloc.dart';

@freezed
class PpkEvent with _$PpkEvent {
  const factory PpkEvent.started({String? idSkpd, String? user}) = _Started;
}
