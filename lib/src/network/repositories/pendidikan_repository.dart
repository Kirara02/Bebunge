import '../../core/api_result.dart';
import '../model/pendidikan/sekolah_paging.dart';

abstract class PendidikanRepository {
  Future<ApiResult<SekolahPaging>> getSekolahList(
      {String? kategori, String? limit, String? page, String? search});
}
