import 'package:freezed_annotation/freezed_annotation.dart';

part 'berita_page.freezed.dart';
part 'berita_page.g.dart';

@freezed
class BeritaPages with _$BeritaPages {
  factory BeritaPages(
      {int? limit,
      int? number,
      int? rowresult,
      int? totalpage,
      int? totalrow}) = _BeritaPages;

  factory BeritaPages.fromJson(Map<String, dynamic> json) =>
      _$BeritaPagesFromJson(json);
}
