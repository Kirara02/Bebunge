import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_mod.freezed.dart';
part 'language_mod.g.dart';

@Freezed()
class LanguageMod with _$LanguageMod {
  const factory LanguageMod({
    String? name,
  }) = _LanguageMod;

  factory LanguageMod.fromJson(Map<String, dynamic> json) =>
      _$LanguageModFromJson(json);
}
