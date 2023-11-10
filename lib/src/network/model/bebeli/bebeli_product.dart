import 'package:freezed_annotation/freezed_annotation.dart';

part 'bebeli_product.freezed.dart';
part 'bebeli_product.g.dart';

@freezed
class BebeliProduct with _$BebeliProduct {
  const factory BebeliProduct(
      {@Default('') final String? id,
      @Default('') final String? seo,
      @Default('') @JsonKey(name: 'nama_produk') final String? namaProduk,
      @Default('') @JsonKey(name: 'id_kategori') final String? idKategori,
      @Default('') final String? kategori,
      @Default('')
      @JsonKey(name: 'id_sub_kategori')
      final String? idSubKategori,
      @Default('') @JsonKey(name: 'sub_kategori') final String? subKategori,
      @Default('') @JsonKey(name: 'satuan_produk') final String? satuanProduk,
      @Default('') final String? gambar,
      @Default(0) final int? berat,
      @Default('') @JsonKey(name: 'satuan_berat') final String? satuanBerat,
      @Default(0) final int? harga,
      @Default(0) @JsonKey(name: 'harga_diskon') final int? hargaDiskon,
      @Default('') final String? diskon,
      @Default(0) final int? tkdn,
      @Default(0) @JsonKey(name: 'id_pedagang') final int? idPedagang,
      @Default('') final String? pemilik,
      @Default('') final String? toko,
      @Default(0) final int? stok,
      @Default('') final String? rate,
      @Default('') @JsonKey(name: 'id_keldes') final String? idKeldes,
      @Default('') final String? keldes,
      @Default('') @JsonKey(name: 'id_kec') final String? idKec,
      @Default('') final String? kecamatan}) = _BebeliProduct;

  factory BebeliProduct.fromJson(Map<String, dynamic> json) =>
      _$BebeliProductFromJson(json);
}
