import 'package:bebunge/src/network/model/fasilitas/fasilitas_content.dart';
import 'package:bebunge/src/network/model/fasilitas/fasilitas_item.dart';
import 'package:bebunge/src/network/model/fasilitas/fasilitas_sub_item.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../core/api_result.dart';
import '../data_source/common/http.dart';
import 'fasilitas_repository.dart';

class FasilitasRepositoryImpl implements FasilitasRepository {
  late UXHttp http;

  FasilitasRepositoryImpl() {
    http = UXHttp(xBaseUrl: dotenv.env['BASEURL_KARTU_KUNING']);
  }

  @override
  Future<ApiResult<List<FasilitasItem>>> getFasilitas() async {
    return await http.get("api/v1/facilities", onSuccess: (response) {
      return (response.data['data'] as List)
          .map((e) => FasilitasItem.fromJson(e))
          .toList();
    });
  }

  @override
  Future<ApiResult<List<FasilitasSubItem>>> getFasilitasSub(
      {String? id}) async {
    return await http.get("api/v1/sub-facilities?fasilitas=$id",
        onSuccess: (response) {
      return (response.data['data'] as List)
          .map((e) => FasilitasSubItem.fromJson(e))
          .toList();
    });
  }

  @override
  Future<ApiResult<List<FasilitasContent>>> getFasilitasContent(
      {String? id}) async {
    return await http.get("api/v1/facility-contents?fasilitas_sub=$id",
        onSuccess: (response) {
      return (response.data['data'] as List)
          .map((e) => FasilitasContent.fromJson(e))
          .toList();
    });
  }
}
