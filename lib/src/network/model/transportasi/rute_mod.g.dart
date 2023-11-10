// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rute_mod.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RuteMod _$$_RuteModFromJson(Map<String, dynamic> json) => _$_RuteMod(
      id: json['id'] as int?,
      noTrayek: json['no_trayek'] as String?,
      noAngkot: json['no_angkot'] as String?,
      asal: json['asal'] as String?,
      tujuan: json['tujuan'] as String?,
      checkpoints: json['checkpoints'] as String?,
    );

Map<String, dynamic> _$$_RuteModToJson(_$_RuteMod instance) =>
    <String, dynamic>{
      'id': instance.id,
      'no_trayek': instance.noTrayek,
      'no_angkot': instance.noAngkot,
      'asal': instance.asal,
      'tujuan': instance.tujuan,
      'checkpoints': instance.checkpoints,
    };
