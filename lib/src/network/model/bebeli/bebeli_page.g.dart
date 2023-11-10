// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bebeli_page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BebeliPage _$$_BebeliPageFromJson(Map<String, dynamic> json) =>
    _$_BebeliPage(
      prev: json['prev'] as int?,
      next: json['next'] as int?,
      start: json['start'] as int?,
      currentPage: json['current_page'] as int?,
      limit: json['limit'] as int?,
      count: json['count'] as int?,
    );

Map<String, dynamic> _$$_BebeliPageToJson(_$_BebeliPage instance) =>
    <String, dynamic>{
      'prev': instance.prev,
      'next': instance.next,
      'start': instance.start,
      'current_page': instance.currentPage,
      'limit': instance.limit,
      'count': instance.count,
    };
