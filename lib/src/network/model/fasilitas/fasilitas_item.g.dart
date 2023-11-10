// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fasilitas_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FasilitasItem _$$_FasilitasItemFromJson(Map<String, dynamic> json) =>
    _$_FasilitasItem(
      id: json['id'] as int?,
      slug: json['slug'] as String?,
      nama: json['nama'] as String?,
      deskripsi: json['deskripsi'] as String?,
      gambar: json['gambar'] as String?,
      createdAt: json['created_at'] as String?,
      updateAt: json['update_at'] as String?,
    );

Map<String, dynamic> _$$_FasilitasItemToJson(_$_FasilitasItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'nama': instance.nama,
      'deskripsi': instance.deskripsi,
      'gambar': instance.gambar,
      'created_at': instance.createdAt,
      'update_at': instance.updateAt,
    };
