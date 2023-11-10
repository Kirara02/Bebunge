part of 'bebeli_added_bloc.dart';

@freezed
class BebeliAddedEvent with _$BebeliAddedEvent {
  const factory BebeliAddedEvent.started({String? idProduct, String? qty}) =
      _Started;
}
