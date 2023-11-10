import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboard_mod.freezed.dart';
part 'onboard_mod.g.dart';

@freezed
class OnboardMod with _$OnboardMod {
  factory OnboardMod({
    final int? id,
    final String? slug,
    final String? nama,
    final int? urutan,
    final String? deskripsi,
    final String? gambar,
    final int? aktif,
  }) = _OnboardMod;

  factory OnboardMod.fromJson(Map<String, dynamic> json) =>
      _$OnboardModFromJson(json);
}
