// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_points.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CheckPointMod _$$_CheckPointModFromJson(Map<String, dynamic> json) =>
    _$_CheckPointMod(
      id: json['id'] as int?,
      terminal: json['terminal'] == null
          ? null
          : TerminalMod.fromJson(json['terminal'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CheckPointModToJson(_$_CheckPointMod instance) =>
    <String, dynamic>{
      'id': instance.id,
      'terminal': instance.terminal,
    };
