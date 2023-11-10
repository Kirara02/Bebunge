import 'package:freezed_annotation/freezed_annotation.dart';

part 'bebeli_user.freezed.dart';
part 'bebeli_user.g.dart';

@freezed
class BebeliUser with _$BebeliUser {
  factory BebeliUser({
    final String? username,
    final String? type,
    final String? token,
  }) = _BebeliUser;

  factory BebeliUser.fromJson(Map<String, dynamic> json) =>
      _$BebeliUserFromJson(json);
}
