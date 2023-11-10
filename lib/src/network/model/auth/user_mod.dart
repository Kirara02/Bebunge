import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_mod.freezed.dart';
part 'user_mod.g.dart';

@freezed
class UserMod with _$UserMod {
  factory UserMod({
    int? id,
    String? code,
    String? name,
    String? email,
    dynamic phoneNumber,
    dynamic address,
    String? status,
  }) = _UserMod;

  factory UserMod.fromJson(Map<String, dynamic> json) =>
      _$UserModFromJson(json);
}
