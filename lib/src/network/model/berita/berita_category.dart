import 'package:freezed_annotation/freezed_annotation.dart';

part 'berita_category.freezed.dart';
part 'berita_category.g.dart';

@freezed
class BeritaCategory with _$BeritaCategory {
  factory BeritaCategory({int? id, String? nama}) = _BeritaCategory;

  factory BeritaCategory.fromJson(Map<String, dynamic> json) =>
      _$BeritaCategoryFromJson(json);
}
