import 'package:freezed_annotation/freezed_annotation.dart';

part 'sekolah_page.freezed.dart';
part 'sekolah_page.g.dart';

@freezed
class SekolahPage with _$SekolahPage {
  factory SekolahPage({int? currentpage, bool? morepage}) = _SekolahPage;

  factory SekolahPage.fromJson(Map<String, dynamic> json) =>
      _$SekolahPageFromJson(json);
}
