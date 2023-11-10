part of 'bebeli_delete_cart_bloc.dart';

@freezed
class BebeliDeleteCartEvent with _$BebeliDeleteCartEvent {
  const factory BebeliDeleteCartEvent.started({String? idProduct}) = _Started;
}
