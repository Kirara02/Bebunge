// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'berita_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BeritaDetailDto _$$_BeritaDetailDtoFromJson(Map<String, dynamic> json) =>
    _$_BeritaDetailDto(
      author: json['author'] as String?,
      id: json['id'] as int?,
      img: json['img'] as String?,
      isi: json['isi'] as String?,
      kategori: json['kategori'] as String?,
      judul: json['judul'] as String?,
      tgl: json['tgl'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_BeritaDetailDtoToJson(_$_BeritaDetailDto instance) =>
    <String, dynamic>{
      'author': instance.author,
      'id': instance.id,
      'img': instance.img,
      'isi': instance.isi,
      'kategori': instance.kategori,
      'judul': instance.judul,
      'tgl': instance.tgl,
      'url': instance.url,
    };
