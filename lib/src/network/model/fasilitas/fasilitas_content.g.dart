// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fasilitas_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FasilitasContent _$$_FasilitasContentFromJson(Map<String, dynamic> json) =>
    _$_FasilitasContent(
      title: json['title'] as String?,
      slug: json['slug'] as String?,
      fasilitas: json['fasilitas'] as String?,
      fasilitasSub: json['fasilitas_sub'] as String?,
      content: json['content'] as String?,
      alamat: json['alamat'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      gambar: json['gambar'] as String?,
      status: json['status'] as int?,
      createdAt: json['created_at'] as String?,
      updateAt: json['update_at'] as String?,
    );

Map<String, dynamic> _$$_FasilitasContentToJson(_$_FasilitasContent instance) =>
    <String, dynamic>{
      'title': instance.title,
      'slug': instance.slug,
      'fasilitas': instance.fasilitas,
      'fasilitas_sub': instance.fasilitasSub,
      'content': instance.content,
      'alamat': instance.alamat,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'gambar': instance.gambar,
      'status': instance.status,
      'created_at': instance.createdAt,
      'update_at': instance.updateAt,
    };
