import 'package:freezed_annotation/freezed_annotation.dart';

part 'bebeli_page.freezed.dart';
part 'bebeli_page.g.dart';

@freezed
class BebeliPage with _$BebeliPage {
  factory BebeliPage({
    final int? prev,
    final int? next,
    final int? start,
    @JsonKey(name: "current_page") int? currentPage,
    final int? limit,
    final int? count,
  }) = _BebeliPage;

  factory BebeliPage.fromJson(Map<String, dynamic> json) =>
      _$BebeliPageFromJson(json);
}
