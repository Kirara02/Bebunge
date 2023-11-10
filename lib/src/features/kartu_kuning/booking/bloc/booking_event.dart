part of 'booking_bloc.dart';

@freezed
class BookingEvent with _$BookingEvent {
  const factory BookingEvent.booking({required String date}) = _Booking;
  const factory BookingEvent.checkBooking({required String code}) =
      _CheckBooking;
  const factory BookingEvent.showCodeDialog({required String code}) =
      _ShowCodeDialogState;
  const factory BookingEvent.checkQuota() = _CheckQuota;
}
