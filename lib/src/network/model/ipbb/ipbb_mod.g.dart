// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ipbb_mod.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IPBBMod _$$_IPBBModFromJson(Map<String, dynamic> json) => _$_IPBBMod(
      nop: json['nop'] as String? ?? '',
      op: json['op'] == null
          ? const ObjekPajakMod()
          : ObjekPajakMod.fromJson(json['op'] as Map<String, dynamic>),
      tagihan: (json['tagihan'] as List<dynamic>?)
              ?.map((e) => TagihanMod.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_IPBBModToJson(_$_IPBBMod instance) =>
    <String, dynamic>{
      'nop': instance.nop,
      'op': instance.op,
      'tagihan': instance.tagihan,
    };
