import 'package:freezed_annotation/freezed_annotation.dart';

part 'bebeli_category_slide.freezed.dart';
part 'bebeli_category_slide.g.dart';

@freezed
class BebeliCategorySlide with _$BebeliCategorySlide {
  factory BebeliCategorySlide({
    @JsonKey(name: "nama_produk") final String? namaProduk,
    @JsonKey(name: "kategori_id") final String? kategoriId,
    @JsonKey(name: "nama_kategori") final String? namaKategori,
    final String? keldes,
    final String? kecamatan,
    final String? toko,
    final String? gambar,
    final String? rate,
  }) = _BebeliCategorySlide;

  factory BebeliCategorySlide.fromJson(Map<String, dynamic> json) =>
      _$BebeliCategorySlideFromJson(json);
}
