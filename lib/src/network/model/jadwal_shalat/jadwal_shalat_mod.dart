import 'package:freezed_annotation/freezed_annotation.dart';

import 'azan_date.dart';
import 'azan_meta.dart';
import 'azan_timing.dart';

part 'jadwal_shalat_mod.freezed.dart';
part 'jadwal_shalat_mod.g.dart';

@freezed
class JadwalShalatMod with _$JadwalShalatMod {
  factory JadwalShalatMod(
      {@Default(AzanTiming()) final AzanTiming timings,
      @Default(AzanDate()) final AzanDate date,
      @Default(AzanMeta()) final AzanMeta meta}) = _JadwalShalatMod;

  factory JadwalShalatMod.fromJson(Map<String, dynamic> json) =>
      _$JadwalShalatModFromJson(json);
}
