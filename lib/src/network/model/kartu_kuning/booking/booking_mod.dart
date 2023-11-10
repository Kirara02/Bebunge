import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_mod.g.dart';
part 'booking_mod.freezed.dart';

@freezed
class BookingMod with _$BookingMod {
  const factory BookingMod({
    required bool success,
    String? data,
    String? date,
    required String message,
  }) = _BookingMod;

  factory BookingMod.fromJson(Map<String, dynamic> json) =>
      _$BookingModFromJson(json);
}
