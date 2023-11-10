// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jadwal_shalat_mod.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JadwalShalatMod _$$_JadwalShalatModFromJson(Map<String, dynamic> json) =>
    _$_JadwalShalatMod(
      timings: json['timings'] == null
          ? const AzanTiming()
          : AzanTiming.fromJson(json['timings'] as Map<String, dynamic>),
      date: json['date'] == null
          ? const AzanDate()
          : AzanDate.fromJson(json['date'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? const AzanMeta()
          : AzanMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_JadwalShalatModToJson(_$_JadwalShalatMod instance) =>
    <String, dynamic>{
      'timings': instance.timings,
      'date': instance.date,
      'meta': instance.meta,
    };
