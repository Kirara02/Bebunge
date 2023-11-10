part of 'bebeli_detail_bloc.dart';

@freezed
class BebeliDetailEvent with _$BebeliDetailEvent {
  const factory BebeliDetailEvent.started({String? id}) = _Started;
}
