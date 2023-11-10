import 'package:freezed_annotation/freezed_annotation.dart';

part 'gregorian_month.freezed.dart';
part 'gregorian_month.g.dart';

@freezed
class GregorianMonth with _$GregorianMonth {
  const factory GregorianMonth(
      {@Default(0) final int? number,
      @Default('') final String? en}) = _GregorianMonth;

  factory GregorianMonth.fromJson(Map<String, dynamic> json) =>
      _$GregorianMonthFromJson(json);
}
