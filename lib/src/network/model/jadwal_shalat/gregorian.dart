import 'package:freezed_annotation/freezed_annotation.dart';

import 'gregorian_month.dart';

part 'gregorian.freezed.dart';
part 'gregorian.g.dart';

@freezed
class Gregorian with _$Gregorian {
  const factory Gregorian(
      {@Default('') final String date,
      @Default('') final String? format,
      @Default(GregorianMonth()) GregorianMonth? month,
      final String? day}) = _Gregorian;

  factory Gregorian.fromJson(Map<String, dynamic> json) =>
      _$GregorianFromJson(json);
}
