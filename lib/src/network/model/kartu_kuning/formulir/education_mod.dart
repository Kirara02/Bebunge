import 'package:freezed_annotation/freezed_annotation.dart';

part 'education_mod.freezed.dart';
part 'education_mod.g.dart';

@Freezed()
class EducationMod with _$EducationMod {
  const factory EducationMod({
    String? name,
  }) = _EducationMod;

  factory EducationMod.fromJson(Map<String, dynamic> json) =>
      _$EducationModFromJson(json);
}
