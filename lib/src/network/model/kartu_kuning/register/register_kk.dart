import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_kk.freezed.dart';
part 'register_kk.g.dart';

@Freezed()
class RegisterKk with _$RegisterKk {
  const factory RegisterKk({
    required bool success,
    required String data,
  }) = _RegisterKk;

  factory RegisterKk.fromJson(Map<String, dynamic> json) =>
      _$RegisterKkFromJson(json);
}
