import 'package:freezed_annotation/freezed_annotation.dart';

import 'bebeli_product_cart_mod.dart';

part 'bebeli_cart_mod.freezed.dart';
part 'bebeli_cart_mod.g.dart';

@freezed
class BebeliCartMod with _$BebeliCartMod {
  factory BebeliCartMod(
      {int? total,
      int? nilai,
      @JsonSerializable(explicitToJson: true)
      @Default([])
      List<BebeliProductCartMod> data}) = _BebeliCartMod;

  factory BebeliCartMod.fromJson(Map<String, dynamic> json) =>
      _$BebeliCartModFromJson(json);
}
