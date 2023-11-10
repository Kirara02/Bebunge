// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rute_detail_mod.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RuteDetailMod _$$_RuteDetailModFromJson(Map<String, dynamic> json) =>
    _$_RuteDetailMod(
      id: json['id'] as int?,
      noTrayek: json['no_trayek'] as String?,
      noAngkot: json['no_angkot'] as String?,
      asal: json['asal'] as String?,
      tujuan: json['tujuan'] as String?,
      kode: json['kode'] as String?,
      checkpoints: (json['checkpoints'] as List<dynamic>?)
          ?.map((e) => CheckPointMod.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$_RuteDetailModToJson(_$_RuteDetailMod instance) =>
    <String, dynamic>{
      'id': instance.id,
      'no_trayek': instance.noTrayek,
      'no_angkot': instance.noAngkot,
      'asal': instance.asal,
      'tujuan': instance.tujuan,
      'kode': instance.kode,
      'checkpoints': instance.checkpoints,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
