import 'package:freezed_annotation/freezed_annotation.dart';

part 'harga_pasar.freezed.dart';
part 'harga_pasar.g.dart';

@freezed
class HargaPasarMod with _$HargaPasarMod {
  factory HargaPasarMod(
      {@JsonKey(name: "commodity_id") final String? commodityId,
      @JsonKey(name: "commodity_name") final String? commodityName,
      @JsonKey(name: "commodity_image_path") final String? commodityImagePath,
      @JsonKey(name: "market_id") final String? marketId,
      @JsonKey(name: "market_name") final String? marketName,
      @JsonKey(name: "source_id") final String? sourceId,
      @JsonKey(name: "source_name") final String? sourceName,
      final String? time,
      final String? value}) = _HargaPasarMod;

  factory HargaPasarMod.fromJson(Map<String, dynamic> json) =>
      _$HargaPasarModFromJson(json);
}
