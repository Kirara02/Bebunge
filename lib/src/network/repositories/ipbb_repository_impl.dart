import 'package:bebunge/src/network/model/ipbb/ipbb_mod.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../../core/api_result.dart';
import '../data_source/common/http.dart';
import 'ipbb_repository.dart';

class IpbbRepositoryImpl implements IpbbRepository {
  late UXHttp http;

  IpbbRepositoryImpl() {
    http = UXHttp(
      xBaseUrl: dotenv.env['BASEURL_APIBEBUNGETEST'],
    );
  }
  @override
  Future<ApiResult<IPBBMod>> getIpbb({String? nopNumber}) async {
    final formData = FormData.fromMap({
      'nop': nopNumber ?? '',
    });
    return await http.post("api/ipbb", data: formData, onSuccess: (response) {
      return IPBBMod.fromJson(response.data['data']);
    });
  }
}
