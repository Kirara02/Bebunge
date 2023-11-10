import 'package:freezed_annotation/freezed_annotation.dart';

part 'quota_mod.freezed.dart';
part 'quota_mod.g.dart';

@freezed
class QuotaMod with _$QuotaMod {
  const factory QuotaMod({
    required bool success,
    required String message,
  }) = _QuotaMod;

  factory QuotaMod.fromJson(Map<String, dynamic> json) =>
      _$QuotaModFromJson(json);
}
