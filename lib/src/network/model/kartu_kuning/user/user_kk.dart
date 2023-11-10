import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_kk.freezed.dart';
part 'user_kk.g.dart';

@Freezed()
class UserKk with _$UserKk {
  const factory UserKk({
    required int id,
    required String name,
    required String email,
    required String phone,
    required String status,
  }) = _UserKk;

  factory UserKk.fromJson(Map<String, dynamic> json) => _$UserKkFromJson(json);
}
