import 'package:freezed_annotation/freezed_annotation.dart';
part 'bebeli_product_cart_mod.freezed.dart';
part 'bebeli_product_cart_mod.g.dart';

@Freezed(toJson: true)
class BebeliProductCartMod with _$BebeliProductCartMod {
  const factory BebeliProductCartMod(
      {int? no,
      @JsonKey(name: 'id_produk') int? idProduk,
      @JsonKey(name: 'nama_produk') String? namaProduk,
      String? gambar,
      int? qty,
      int? price,
      String? unit}) = _BebeliProductCartMod;

  factory BebeliProductCartMod.fromJson(Map<String, dynamic> json) =>
      _$BebeliProductCartModFromJson(json);
  // Map<String, dynamic> toJson() => {
  //       'no': this.no,
  //       'id_produk': this.idProduk,
  //       'nama_produk': this.namaProduk,
  //       'gambar': this.gambar,
  //       'qty': this.qty,
  //       'price': this.price,
  //       'unit': this.unit
  //     };
}
