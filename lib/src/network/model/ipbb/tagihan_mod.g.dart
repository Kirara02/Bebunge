// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tagihan_mod.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TagihanMod _$$_TagihanModFromJson(Map<String, dynamic> json) =>
    _$_TagihanMod(
      tahun: json['tahun'] as String? ?? '',
      pokok: json['pokok'] as int? ?? 0,
      denda: json['denda'] as int? ?? 0,
      bayar: json['bayar'] as int? ?? 0,
      sisa: json['sisa'] as int? ?? 0,
      tglBayar: json['tgl_bayar'] as String? ?? '',
      lunas: json['lunas'] as String? ?? '',
    );

Map<String, dynamic> _$$_TagihanModToJson(_$_TagihanMod instance) =>
    <String, dynamic>{
      'tahun': instance.tahun,
      'pokok': instance.pokok,
      'denda': instance.denda,
      'bayar': instance.bayar,
      'sisa': instance.sisa,
      'tgl_bayar': instance.tglBayar,
      'lunas': instance.lunas,
    };
