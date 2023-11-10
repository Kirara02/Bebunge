import 'package:dio/dio.dart';

import '../../core/api_result.dart';

abstract class JadwalShalatRepository {
  Future<ApiResult<Response>> getJadwalShalat(
      {String? date, String? lat, String? long});
}
