part of 'booking_bloc.dart';

@freezed
class BookingState with _$BookingState {
  const factory BookingState.initial() = _Initial;
  const factory BookingState.loading() = _Loading;
  const factory BookingState.success(BookingMod data) = _Success;
  const factory BookingState.quotaSuccess(QuotaMod data) = _QuotaSuccess;
  const factory BookingState.error(NetworkExceptions error) = _Error;
  const factory BookingState.showCodeDialog(String code) = _ShowCodeDialog;
}
