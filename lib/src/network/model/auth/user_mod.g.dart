// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_mod.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserMod _$$_UserModFromJson(Map<String, dynamic> json) => _$_UserMod(
      id: json['id'] as int?,
      code: json['code'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'],
      address: json['address'],
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$_UserModToJson(_$_UserMod instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'address': instance.address,
      'status': instance.status,
    };
