// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sekolah_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SekolahDetail _$$_SekolahDetailFromJson(Map<String, dynamic> json) =>
    _$_SekolahDetail(
      id: json['id'] as int?,
      namaSekolah: json['nama_sekolah'] as String?,
      jenisSekolah: json['jenis_sekolah'] as String?,
      jenjangSekolah: json['jenjang_sekolah'] as String?,
      noTelp: json['no_telp'] as String?,
      image: json['image'] as String?,
      longitude: json['longitude'] as String?,
      latitude: json['latitude'] as String?,
      alamat: json['alamat'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$_SekolahDetailToJson(_$_SekolahDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama_sekolah': instance.namaSekolah,
      'jenis_sekolah': instance.jenisSekolah,
      'jenjang_sekolah': instance.jenjangSekolah,
      'no_telp': instance.noTelp,
      'image': instance.image,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'alamat': instance.alamat,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
