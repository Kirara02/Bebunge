import 'package:freezed_annotation/freezed_annotation.dart';

part 'bebeli_product_detail.freezed.dart';
part 'bebeli_product_detail.g.dart';

@freezed
class BebeliProductDetail with _$BebeliProductDetail {
  factory BebeliProductDetail(
      {final String? id,
      final String? seo,
      @JsonKey(name: "nama_produk") final String? namaProduk,
      @JsonKey(name: "id_kategori") final String? idKategori,
      final String? kategori,
      @JsonKey(name: "id_sub_kategori") final String? idSubKategori,
      @JsonKey(name: "sub_kategori") final String? subKategori,
      @JsonKey(name: "satuan_produk") final String? satuanProduk,
      final String? gambar,
      final int? berat,
      @JsonKey(name: "satuan_berat") final String? satuanBerat,
      final int? harga,
      @JsonKey(name: "harga_diskon") final int? hargaDiskon,
      final String? diskon,
      final int? tkdn,
      @JsonKey(name: "id_pedagang") final int? idPedagang,
      final String? pemilik,
      final String? toko,
      final int? stok,
      final String? rate,
      @JsonKey(name: "id_keldes") final String? idKeldes,
      @JsonKey(name: "keldes") final String? keldes,
      @JsonKey(name: "id_kec") final String? idKec,
      final String? kecamatan,
      final String? deskripsi}) = _BebeliProductDetail;

  factory BebeliProductDetail.fromJson(Map<String, dynamic> json) =>
      _$BebeliProductDetailFromJson(json);
}
