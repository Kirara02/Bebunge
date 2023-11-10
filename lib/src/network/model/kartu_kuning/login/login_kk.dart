import 'package:bebunge/src/network/model/kartu_kuning/user/user_kk.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_kk.freezed.dart';
part 'login_kk.g.dart';

@Freezed()
class LoginKk with _$LoginKk {
  const factory LoginKk({
    UserKk? user,
    String? token,
  }) = _LoginKk;

  factory LoginKk.fromJson(Map<String, dynamic> json) =>
      _$LoginKkFromJson(json);
}
