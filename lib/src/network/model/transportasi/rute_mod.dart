import 'package:freezed_annotation/freezed_annotation.dart';

part 'rute_mod.freezed.dart';
part 'rute_mod.g.dart';

@freezed
class RuteMod with _$RuteMod {
  factory RuteMod({
    final int? id,
    @JsonKey(name: "no_trayek") final String? noTrayek,
    @JsonKey(name: "no_angkot") final String? noAngkot,
    final String? asal,
    final String? tujuan,
    final String? checkpoints,
  }) = _RuteMod;

  factory RuteMod.fromJson(Map<String, dynamic> json) =>
      _$RuteModFromJson(json);
}
