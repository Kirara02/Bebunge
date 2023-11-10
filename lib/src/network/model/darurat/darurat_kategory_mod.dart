import 'package:freezed_annotation/freezed_annotation.dart';

part 'darurat_kategory_mod.freezed.dart';
part 'darurat_kategory_mod.g.dart';

@freezed
class DaruratKategoryMod with _$DaruratKategoryMod {
  factory DaruratKategoryMod(
      {@JsonKey(name: 'id_kategori') String? idKategory,
      String? keterangan,
      String? kategori}) = _DaruratKategoryMod;

  factory DaruratKategoryMod.fromJson(Map<String, dynamic> json) =>
      _$DaruratKategoryModFromJson(json);
}
