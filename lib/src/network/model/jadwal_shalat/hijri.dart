import 'package:freezed_annotation/freezed_annotation.dart';

part 'hijri.freezed.dart';
part 'hijri.g.dart';

@freezed
class Hijri with _$Hijri {
  factory Hijri({final String? date, final String? format, final String? day}) =
      _Hijri;

  factory Hijri.fromJson(Map<String, dynamic> json) => _$HijriFromJson(json);
}
