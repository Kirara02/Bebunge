import 'package:bebunge/src/network/model/darurat/darurat_kategory_mod.dart';
import 'package:dio/dio.dart';

import '../../core/api_result.dart';

abstract class DaruratRepository {
  Future<ApiResult<List<DaruratKategoryMod>>> categoryDarurat();
  Future<ApiResult<Response>> sos(
      {String? nama,
      String? telepon,
      String? alamatPelapor,
      String? lokasi,
      String? lat,
      String? long,
      String? idKategori});
}
