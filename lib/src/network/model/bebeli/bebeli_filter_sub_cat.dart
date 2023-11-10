import 'package:freezed_annotation/freezed_annotation.dart';

part 'bebeli_filter_sub_cat.freezed.dart';
part 'bebeli_filter_sub_cat.g.dart';

@freezed
class BebeliFilterSubCat with _$BebeliFilterSubCat {
  factory BebeliFilterSubCat({int? id, String? text, int? kategori}) =
      _BebeliFilterSubCat;

  factory BebeliFilterSubCat.fromJson(Map<String, dynamic> json) =>
      _$BebeliFilterSubCatFromJson(json);
}
