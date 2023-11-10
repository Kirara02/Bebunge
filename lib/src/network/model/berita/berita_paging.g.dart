// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'berita_paging.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BeritaPaging _$$_BeritaPagingFromJson(Map<String, dynamic> json) =>
    _$_BeritaPaging(
      page: json['page'] == null
          ? null
          : BeritaPages.fromJson(json['page'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => BeritaDetailDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BeritaPagingToJson(_$_BeritaPaging instance) =>
    <String, dynamic>{
      'page': instance.page,
      'data': instance.data,
    };
