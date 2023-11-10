import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../core/api_result.dart';
import '../data_source/common/http.dart';
import '../model/berita/berita_category.dart';
import '../model/berita/berita_detail.dart';
import '../model/berita/berita_paging.dart';
import 'berita_repository.dart';

class BeritaRepositoryImpl implements BeritaRepository {
  late UXHttp http;

  BeritaRepositoryImpl() {
    http = UXHttp(
      xBaseUrl: dotenv.env['BASE_URL_BEKASI_KABUPATEN'],
    );
  }

  @override
  Future<ApiResult<BeritaPaging>> beritaTerkini(
      {String limit = "5", required String page, bool? showContent}) async {
    return await http.get(
        "data/berita/terkini?lmt=$limit&page=$page&show_content=$showContent",
        onSuccess: (response) => BeritaPaging.fromJson(response.data));
  }

  @override
  Future<ApiResult<List<BeritaCategory>>> beritaCategoryList() async {
    return await http.get("data/berita/kategori",
        onSuccess: (response) => (response.data['data'] as List)
            .map((e) => BeritaCategory.fromJson(e))
            .toList());
  }

  @override
  Future<ApiResult<BeritaPaging>> beritaFilter(
      {String? kategori, String? limit, String? page, String? search}) async {
    return await http.get(
        "data/berita/list?&lmt=$limit&page=$page&show_content=false&kat=$kategori&search=$search",
        onSuccess: (response) {
      return BeritaPaging.fromJson(response.data);
    });
  }

  @override
  Future<ApiResult<BeritaDetailDto>> beritaDetail({String? beritaId}) async {
    return await http.get("data/berita/detail?id=$beritaId",
        onSuccess: (response) =>
            BeritaDetailDto.fromJson(response.data['data']));
  }
}
