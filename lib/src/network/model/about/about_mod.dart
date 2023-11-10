import 'package:freezed_annotation/freezed_annotation.dart';

part 'about_mod.freezed.dart';
part 'about_mod.g.dart';

@freezed
class AboutMod with _$AboutMod {
  factory AboutMod({String? title, String? slug, String? content}) = _AboutMod;

  factory AboutMod.fromJson(Map<String, dynamic> json) =>
      _$AboutModFromJson(json);
}
