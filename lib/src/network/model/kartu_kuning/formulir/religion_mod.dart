import 'package:freezed_annotation/freezed_annotation.dart';

part 'religion_mod.g.dart';
part 'religion_mod.freezed.dart';

@freezed
class ReligionMod with _$ReligionMod {
  const factory ReligionMod({required String name}) = _ReligionMod;

  factory ReligionMod.fromJson(Map<String, dynamic> json) =>
      _$ReligionModFromJson(json);
}
