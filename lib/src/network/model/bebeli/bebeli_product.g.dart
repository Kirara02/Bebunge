// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bebeli_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BebeliProduct _$$_BebeliProductFromJson(Map<String, dynamic> json) =>
    _$_BebeliProduct(
      id: json['id'] as String? ?? '',
      seo: json['seo'] as String? ?? '',
      namaProduk: json['nama_produk'] as String? ?? '',
      idKategori: json['id_kategori'] as String? ?? '',
      kategori: json['kategori'] as String? ?? '',
      idSubKategori: json['id_sub_kategori'] as String? ?? '',
      subKategori: json['sub_kategori'] as String? ?? '',
      satuanProduk: json['satuan_produk'] as String? ?? '',
      gambar: json['gambar'] as String? ?? '',
      berat: json['berat'] as int? ?? 0,
      satuanBerat: json['satuan_berat'] as String? ?? '',
      harga: json['harga'] as int? ?? 0,
      hargaDiskon: json['harga_diskon'] as int? ?? 0,
      diskon: json['diskon'] as String? ?? '',
      tkdn: json['tkdn'] as int? ?? 0,
      idPedagang: json['id_pedagang'] as int? ?? 0,
      pemilik: json['pemilik'] as String? ?? '',
      toko: json['toko'] as String? ?? '',
      stok: json['stok'] as int? ?? 0,
      rate: json['rate'] as String? ?? '',
      idKeldes: json['id_keldes'] as String? ?? '',
      keldes: json['keldes'] as String? ?? '',
      idKec: json['id_kec'] as String? ?? '',
      kecamatan: json['kecamatan'] as String? ?? '',
    );

Map<String, dynamic> _$$_BebeliProductToJson(_$_BebeliProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'seo': instance.seo,
      'nama_produk': instance.namaProduk,
      'id_kategori': instance.idKategori,
      'kategori': instance.kategori,
      'id_sub_kategori': instance.idSubKategori,
      'sub_kategori': instance.subKategori,
      'satuan_produk': instance.satuanProduk,
      'gambar': instance.gambar,
      'berat': instance.berat,
      'satuan_berat': instance.satuanBerat,
      'harga': instance.harga,
      'harga_diskon': instance.hargaDiskon,
      'diskon': instance.diskon,
      'tkdn': instance.tkdn,
      'id_pedagang': instance.idPedagang,
      'pemilik': instance.pemilik,
      'toko': instance.toko,
      'stok': instance.stok,
      'rate': instance.rate,
      'id_keldes': instance.idKeldes,
      'keldes': instance.keldes,
      'id_kec': instance.idKec,
      'kecamatan': instance.kecamatan,
    };
