// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sekolah_paging.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SekolahPaging _$$_SekolahPagingFromJson(Map<String, dynamic> json) =>
    _$_SekolahPaging(
      page: json['page'] == null
          ? null
          : SekolahPage.fromJson(json['page'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => SekolahDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SekolahPagingToJson(_$_SekolahPaging instance) =>
    <String, dynamic>{
      'page': instance.page,
      'data': instance.data,
    };
