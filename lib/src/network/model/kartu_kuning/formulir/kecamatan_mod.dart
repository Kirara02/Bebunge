import 'package:freezed_annotation/freezed_annotation.dart';

part 'kecamatan_mod.freezed.dart';
part 'kecamatan_mod.g.dart';

@Freezed()
class KecamatanMod with _$KecamatanMod {
  const factory KecamatanMod({
    String? name,
  }) = _KecamatanMod;

  factory KecamatanMod.fromJson(Map<String, dynamic> json) =>
      _$KecamatanModFromJson(json);
}
