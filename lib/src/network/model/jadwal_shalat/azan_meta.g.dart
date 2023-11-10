// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'azan_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AzanMeta _$$_AzanMetaFromJson(Map<String, dynamic> json) => _$_AzanMeta(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      timezone: json['timezone'] as String?,
      latitudeAdjustmentMethod: json['latitudeAdjustmentMethod'] as String?,
      midnightMode: json['midnightMode'] as String?,
      school: json['school'] as String?,
    );

Map<String, dynamic> _$$_AzanMetaToJson(_$_AzanMeta instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'timezone': instance.timezone,
      'latitudeAdjustmentMethod': instance.latitudeAdjustmentMethod,
      'midnightMode': instance.midnightMode,
      'school': instance.school,
    };
