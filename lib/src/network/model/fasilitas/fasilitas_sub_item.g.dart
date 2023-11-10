// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fasilitas_sub_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FasilitasSubItem _$$_FasilitasSubItemFromJson(Map<String, dynamic> json) =>
    _$_FasilitasSubItem(
      id: json['id'] as int?,
      slug: json['slug'] as String?,
      nama: json['nama'] as String?,
      deskripsi: json['deskripsi'] as String?,
      gambar: json['gambar'] as String?,
      fasilitas: json['fasilitas'] as int?,
      createdAt: json['created_at'] as String?,
      updateAt: json['update_at'] as String?,
    );

Map<String, dynamic> _$$_FasilitasSubItemToJson(_$_FasilitasSubItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'nama': instance.nama,
      'deskripsi': instance.deskripsi,
      'gambar': instance.gambar,
      'fasilitas': instance.fasilitas,
      'created_at': instance.createdAt,
      'update_at': instance.updateAt,
    };
