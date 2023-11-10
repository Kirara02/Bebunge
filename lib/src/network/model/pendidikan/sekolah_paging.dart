import 'package:bebunge/src/network/model/pendidikan/sekolah_detail.dart';
import 'package:bebunge/src/network/model/pendidikan/sekolah_page.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sekolah_paging.freezed.dart';
part 'sekolah_paging.g.dart';

@freezed
class SekolahPaging with _$SekolahPaging {
  factory SekolahPaging({SekolahPage? page, List<SekolahDetail>? data}) =
      _SekolahPaging;

  factory SekolahPaging.fromJson(Map<String, dynamic> json) =>
      _$SekolahPagingFromJson(json);
}
