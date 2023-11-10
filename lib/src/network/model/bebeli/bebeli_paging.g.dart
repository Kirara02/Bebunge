// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bebeli_paging.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BebeliPaging _$$_BebeliPagingFromJson(Map<String, dynamic> json) =>
    _$_BebeliPaging(
      page: json['page'] == null
          ? null
          : BebeliPage.fromJson(json['page'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => BebeliProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BebeliPagingToJson(_$_BebeliPaging instance) =>
    <String, dynamic>{
      'page': instance.page,
      'data': instance.data,
    };
