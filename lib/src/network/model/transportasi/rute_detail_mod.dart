import 'package:freezed_annotation/freezed_annotation.dart';

import 'check_points.dart';

part 'rute_detail_mod.freezed.dart';
part 'rute_detail_mod.g.dart';

@freezed
class RuteDetailMod with _$RuteDetailMod {
  factory RuteDetailMod(
      {final int? id,
      @JsonKey(name: "no_trayek") final String? noTrayek,
      @JsonKey(name: "no_angkot") final String? noAngkot,
      final String? asal,
      final String? tujuan,
      final String? kode,
      final List<CheckPointMod>? checkpoints,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "updated_at") final String? updatedAt}) = _RuteDetailMod;

  factory RuteDetailMod.fromJson(Map<String, dynamic> json) =>
      _$RuteDetailModFromJson(json);
}
