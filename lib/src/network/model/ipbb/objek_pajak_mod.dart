import 'package:freezed_annotation/freezed_annotation.dart';

part 'objek_pajak_mod.freezed.dart';
part 'objek_pajak_mod.g.dart';

@freezed
class ObjekPajakMod with _$ObjekPajakMod {
  const factory ObjekPajakMod({
    @Default('') final String? nop,
    @Default('') final String? alamat,
    @Default('') final String? kelurahan,
    @Default('') final String? kecamatan,
  }) = _ObjekPajakMod;

  factory ObjekPajakMod.fromJson(Map<String, dynamic> json) =>
      _$ObjekPajakModFromJson(json);
}
