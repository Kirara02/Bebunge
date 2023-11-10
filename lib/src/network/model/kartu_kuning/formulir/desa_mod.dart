import 'package:freezed_annotation/freezed_annotation.dart';

part 'desa_mod.g.dart';
part 'desa_mod.freezed.dart';

@freezed
class DesaMod with _$DesaMod {
  const factory DesaMod({
    required String name,
    @JsonKey(name: "zip_code") required String zipCode,
  }) = _DesaMod;

  factory DesaMod.fromJson(Map<String, dynamic> json) =>
      _$DesaModFromJson(json);
}
