// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bebeli_cart_mod.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BebeliCartMod _$$_BebeliCartModFromJson(Map<String, dynamic> json) =>
    _$_BebeliCartMod(
      total: json['total'] as int?,
      nilai: json['nilai'] as int?,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  BebeliProductCartMod.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_BebeliCartModToJson(_$_BebeliCartMod instance) =>
    <String, dynamic>{
      'total': instance.total,
      'nilai': instance.nilai,
      'data': instance.data,
    };
