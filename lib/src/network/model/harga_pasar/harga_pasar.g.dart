// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'harga_pasar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HargaPasarMod _$$_HargaPasarModFromJson(Map<String, dynamic> json) =>
    _$_HargaPasarMod(
      commodityId: json['commodity_id'] as String?,
      commodityName: json['commodity_name'] as String?,
      commodityImagePath: json['commodity_image_path'] as String?,
      marketId: json['market_id'] as String?,
      marketName: json['market_name'] as String?,
      sourceId: json['source_id'] as String?,
      sourceName: json['source_name'] as String?,
      time: json['time'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$_HargaPasarModToJson(_$_HargaPasarMod instance) =>
    <String, dynamic>{
      'commodity_id': instance.commodityId,
      'commodity_name': instance.commodityName,
      'commodity_image_path': instance.commodityImagePath,
      'market_id': instance.marketId,
      'market_name': instance.marketName,
      'source_id': instance.sourceId,
      'source_name': instance.sourceName,
      'time': instance.time,
      'value': instance.value,
    };
