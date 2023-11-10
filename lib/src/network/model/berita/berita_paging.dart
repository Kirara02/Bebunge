import 'package:freezed_annotation/freezed_annotation.dart';

import 'berita_detail.dart';
import 'berita_page.dart';

part 'berita_paging.freezed.dart';
part 'berita_paging.g.dart';

@freezed
class BeritaPaging with _$BeritaPaging {
  factory BeritaPaging({BeritaPages? page, List<BeritaDetailDto>? data}) =
      _BeritaPaging;

  factory BeritaPaging.fromJson(Map<String, dynamic> json) =>
      _$BeritaPagingFromJson(json);
}
