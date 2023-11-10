import 'package:freezed_annotation/freezed_annotation.dart';

part 'major_mod.freezed.dart';
part 'major_mod.g.dart';

@Freezed()
class MajorMod with _$MajorMod {
    const factory MajorMod({
    String? name,
  }) = _MajorMod;

  factory MajorMod.fromJson(Map<String, dynamic> json) =>
      _$MajorModFromJson(json);
}
