import 'package:freezed_annotation/freezed_annotation.dart';

part 'bebeli_filter_cat.freezed.dart';
part 'bebeli_filter_cat.g.dart';

@freezed
class BebeliFilterCat with _$BebeliFilterCat {
  factory BebeliFilterCat({int? id, String? text, String? gambar}) =
      _BebeliFilterCat;

  factory BebeliFilterCat.fromJson(Map<String, dynamic> json) =>
      _$BebeliFilterCatFromJson(json);
}
