// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboard_mod.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OnboardMod _$$_OnboardModFromJson(Map<String, dynamic> json) =>
    _$_OnboardMod(
      id: json['id'] as int?,
      slug: json['slug'] as String?,
      nama: json['nama'] as String?,
      urutan: json['urutan'] as int?,
      deskripsi: json['deskripsi'] as String?,
      gambar: json['gambar'] as String?,
      aktif: json['aktif'] as int?,
    );

Map<String, dynamic> _$$_OnboardModToJson(_$_OnboardMod instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'nama': instance.nama,
      'urutan': instance.urutan,
      'deskripsi': instance.deskripsi,
      'gambar': instance.gambar,
      'aktif': instance.aktif,
    };
