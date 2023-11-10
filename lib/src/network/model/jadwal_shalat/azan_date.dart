import 'package:freezed_annotation/freezed_annotation.dart';

import 'gregorian.dart';
import 'hijri.dart';

part 'azan_date.freezed.dart';
part 'azan_date.g.dart';

@freezed
class AzanDate with _$AzanDate {
  const factory AzanDate({
    final String? readable,
    final String? timestamp,
    @Default(Gregorian()) final Gregorian gregorian,
    final Hijri? hijri,
  }) = _AzanDate;

  factory AzanDate.fromJson(Map<String, dynamic> json) =>
      _$AzanDateFromJson(json);
}
