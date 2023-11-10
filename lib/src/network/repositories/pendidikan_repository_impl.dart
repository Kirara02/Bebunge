import 'package:bebunge/src/network/model/pendidikan/sekolah_paging.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../core/api_result.dart';
import '../data_source/common/http.dart';
import 'pendidikan_repository.dart';

class PendidikanRepositoryImpl implements PendidikanRepository {
  late UXHttp http;

  PendidikanRepositoryImpl() {
    http = UXHttp(
      xBaseUrl: dotenv.env['BASEURL_KARTU_KUNING'],
    );
  }

  @override
  Future<ApiResult<SekolahPaging>> getSekolahList(
      {String? kategori, String? limit, String? page, String? search}) async {
    return await http.get(
        "api/v1/schools?page=$page&search=${search ?? ''}&category=${kategori ?? ''}",
        onSuccess: (response) {
      return SekolahPaging.fromJson(response.data);
    });
  }
}
