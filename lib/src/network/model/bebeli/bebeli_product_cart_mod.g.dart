// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bebeli_product_cart_mod.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BebeliProductCartMod _$$_BebeliProductCartModFromJson(
        Map<String, dynamic> json) =>
    _$_BebeliProductCartMod(
      no: json['no'] as int?,
      idProduk: json['id_produk'] as int?,
      namaProduk: json['nama_produk'] as String?,
      gambar: json['gambar'] as String?,
      qty: json['qty'] as int?,
      price: json['price'] as int?,
      unit: json['unit'] as String?,
    );

Map<String, dynamic> _$$_BebeliProductCartModToJson(
        _$_BebeliProductCartMod instance) =>
    <String, dynamic>{
      'no': instance.no,
      'id_produk': instance.idProduk,
      'nama_produk': instance.namaProduk,
      'gambar': instance.gambar,
      'qty': instance.qty,
      'price': instance.price,
      'unit': instance.unit,
    };
