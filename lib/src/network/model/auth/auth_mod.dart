import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_mod.freezed.dart';
part 'auth_mod.g.dart';

@freezed
class AuthMod with _$AuthMod {
  factory AuthMod({bool? success, bool? message, String? token}) = _AuthMod;

  factory AuthMod.fromJson(Map<String, dynamic> json) =>
      _$AuthModFromJson(json);
}
