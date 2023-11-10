import 'package:bebunge/src/network/model/ipbb/objek_pajak_mod.dart';
import 'package:bebunge/src/network/model/ipbb/tagihan_mod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ipbb_mod.freezed.dart';
part 'ipbb_mod.g.dart';

@freezed
class IPBBMod with _$IPBBMod {
  factory IPBBMod(
      {@Default('') final String? nop,
      @Default(ObjekPajakMod()) final ObjekPajakMod op,
      @Default([]) final List<TagihanMod> tagihan}) = _IPBBMod;

  factory IPBBMod.fromJson(Map<String, dynamic> json) =>
      _$IPBBModFromJson(json);
}

