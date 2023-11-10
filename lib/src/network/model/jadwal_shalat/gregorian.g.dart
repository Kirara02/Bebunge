// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gregorian.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Gregorian _$$_GregorianFromJson(Map<String, dynamic> json) => _$_Gregorian(
      date: json['date'] as String? ?? '',
      format: json['format'] as String? ?? '',
      month: json['month'] == null
          ? const GregorianMonth()
          : GregorianMonth.fromJson(json['month'] as Map<String, dynamic>),
      day: json['day'] as String?,
    );

Map<String, dynamic> _$$_GregorianToJson(_$_Gregorian instance) =>
    <String, dynamic>{
      'date': instance.date,
      'format': instance.format,
      'month': instance.month,
      'day': instance.day,
    };
