import '../../core/api_result.dart';
import '../model/berita/berita_category.dart';
import '../model/berita/berita_detail.dart';
import '../model/berita/berita_paging.dart';

abstract class BeritaRepository {
  Future<ApiResult<BeritaPaging>> beritaTerkini(
      {String limit, required String page, bool showContent});
  Future<ApiResult<List<BeritaCategory>>> beritaCategoryList();

  Future<ApiResult<BeritaPaging>> beritaFilter(
      {String? kategori, String? limit, String? page, String? search});

  Future<ApiResult<BeritaDetailDto>> beritaDetail({String? beritaId});
}
