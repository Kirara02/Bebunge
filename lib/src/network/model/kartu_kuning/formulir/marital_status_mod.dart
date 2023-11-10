import 'package:freezed_annotation/freezed_annotation.dart';

part 'marital_status_mod.g.dart';
part 'marital_status_mod.freezed.dart';

@freezed
class MaritalStatusMod with _$MaritalStatusMod {
  const factory MaritalStatusMod({required String name}) = _MaritalStatusMod;

  factory MaritalStatusMod.fromJson(Map<String, dynamic> json) =>
      _$MaritalStatusModFromJson(json);
}
