// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_mod.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookingMod _$$_BookingModFromJson(Map<String, dynamic> json) =>
    _$_BookingMod(
      success: json['success'] as bool,
      data: json['data'] as String?,
      date: json['date'] as String?,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$_BookingModToJson(_$_BookingMod instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'date': instance.date,
      'message': instance.message,
    };
