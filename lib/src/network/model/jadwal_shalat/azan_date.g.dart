// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'azan_date.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AzanDate _$$_AzanDateFromJson(Map<String, dynamic> json) => _$_AzanDate(
      readable: json['readable'] as String?,
      timestamp: json['timestamp'] as String?,
      gregorian: json['gregorian'] == null
          ? const Gregorian()
          : Gregorian.fromJson(json['gregorian'] as Map<String, dynamic>),
      hijri: json['hijri'] == null
          ? null
          : Hijri.fromJson(json['hijri'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AzanDateToJson(_$_AzanDate instance) =>
    <String, dynamic>{
      'readable': instance.readable,
      'timestamp': instance.timestamp,
      'gregorian': instance.gregorian,
      'hijri': instance.hijri,
    };
