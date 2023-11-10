import 'package:freezed_annotation/freezed_annotation.dart';

part 'bebeli_filter_kel.freezed.dart';
part 'bebeli_filter_kel.g.dart';

@freezed
class BebeliFilterKel with _$BebeliFilterKel {
  factory BebeliFilterKel({String? id, String? text}) = _BebeliFilterKel;

  factory BebeliFilterKel.fromJson(Map<String, dynamic> json) =>
      _$BebeliFilterKelFromJson(json);
}
