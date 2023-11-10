import 'package:freezed_annotation/freezed_annotation.dart';

part 'azan_meta.freezed.dart';
part 'azan_meta.g.dart';

@freezed
class AzanMeta with _$AzanMeta {
  const factory AzanMeta({
    final double? latitude,
    final double? longitude,
    final String? timezone,
    final String? latitudeAdjustmentMethod,
    final String? midnightMode,
    final String? school,
  }) = _AzanMeta;

  factory AzanMeta.fromJson(Map<String, dynamic> json) =>
      _$AzanMetaFromJson(json);
}
