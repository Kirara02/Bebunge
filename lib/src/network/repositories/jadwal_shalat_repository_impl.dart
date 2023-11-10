import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../core/api_result.dart';
import '../data_source/common/http.dart';
import 'jadwal_shalat_repository.dart';

class JadwalShalatRepositoryImpl implements JadwalShalatRepository {
  late UXHttp http;

  JadwalShalatRepositoryImpl() {
    http = UXHttp(
      xBaseUrl: dotenv.env['BASEURL_JADWAL_SHALAT'],
    );
  }

  @override
  Future<ApiResult<Response>> getJadwalShalat(
      {String? date, String? lat, String? long}) async {
    return await http.get(
        "$date?latitude=${lat ?? '-6.170166'}&longitude=${long ?? '106.831375'}&method=11",
        onSuccess: (response) {
      return response;
    });
  }
}
