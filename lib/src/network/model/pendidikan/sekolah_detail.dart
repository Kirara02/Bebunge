import 'package:freezed_annotation/freezed_annotation.dart';

part 'sekolah_detail.freezed.dart';
part 'sekolah_detail.g.dart';

@freezed
class SekolahDetail with _$SekolahDetail {
  factory SekolahDetail(
      {final int? id,
      @JsonKey(name: 'nama_sekolah') final String? namaSekolah,
      @JsonKey(name: 'jenis_sekolah') final String? jenisSekolah,
      @JsonKey(name: 'jenjang_sekolah') final String? jenjangSekolah,
      @JsonKey(name: 'no_telp') final String? noTelp,
      final String? image,
      final String? longitude,
      final String? latitude,
      final String? alamat,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt}) = _SekolahDetail;

  factory SekolahDetail.fromJson(Map<String, dynamic> json) =>
      _$SekolahDetailFromJson(json);
}
