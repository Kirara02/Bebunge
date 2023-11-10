import 'package:freezed_annotation/freezed_annotation.dart';

part 'occupation_mod.freezed.dart';
part 'occupation_mod.g.dart';

@Freezed()
class OccupationMod with _$OccupationMod {
  const factory OccupationMod({
    String? name,
  }) = _OccupationMod;

  factory OccupationMod.fromJson(Map<String, dynamic> json) =>
      _$OccupationModFromJson(json);
}
