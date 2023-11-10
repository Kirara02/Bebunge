// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_kk.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginKk _$$_LoginKkFromJson(Map<String, dynamic> json) => _$_LoginKk(
      user: json['user'] == null
          ? null
          : UserKk.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$_LoginKkToJson(_$_LoginKk instance) =>
    <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
    };
