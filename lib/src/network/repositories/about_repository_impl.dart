import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../core/api_result.dart';
import '../data_source/common/http.dart';
import '../model/about/about_mod.dart';
import 'about_repository.dart';

class AboutRepositoryImpl implements AboutRepository {
  late UXHttp http;

  AboutRepositoryImpl() {
    http = UXHttp(
      xBaseUrl: dotenv.env['BASEURL_KARTU_KUNING'],
    );
  }
  @override
  Future<ApiResult<AboutMod>> getAboutSejarah() async {
    return await http.get("api/v1/articles/sejarah",
        onSuccess: (response) => AboutMod.fromJson(response.data['data']));
  }

  @override
  Future<ApiResult<AboutMod>> getAboutKependudukan() async {
    return await http.get("api/v1/articles/kependudukan",
        onSuccess: (response) => AboutMod.fromJson(response.data['data']));
  }

  @override
  Future<ApiResult<AboutMod>> getAboutGeografis() async {
    return await http.get("api/v1/articles/geografis",
        onSuccess: (response) => AboutMod.fromJson(response.data['data']));
  }
}
