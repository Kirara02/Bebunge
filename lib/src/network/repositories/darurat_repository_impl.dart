import 'package:bebunge/src/network/model/darurat/darurat_kategory_mod.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../core/api_result.dart';
import '../data_source/common/http.dart';
import 'darurat_repository.dart';

class DaruratRepositoryImpl implements DaruratRepository {
  late UXHttp http;

  DaruratRepositoryImpl() {
    http = UXHttp(xBaseUrl: dotenv.env['BASEURL_APIBEBUNGETEST']);
  }
  @override
  Future<ApiResult<List<DaruratKategoryMod>>> categoryDarurat() async {
    return await http.get("api/psc-get-kategori", onSuccess: (response) {
      return (response.data['data'] as List)
          .map((e) => DaruratKategoryMod.fromJson(e))
          .toList();
    });
  }

  @override
  Future<ApiResult<Response>> sos(
      {String? nama,
      String? telepon,
      String? alamatPelapor,
      String? lokasi,
      String? lat,
      String? long,
      String? idKategori}) async {
    final formData = {
      'nama': nama ?? '',
      'telepon': telepon ?? '',
      'alamat_pelapor': alamatPelapor ?? '',
      'lokasi': lokasi ?? '',
      'lat': lat ?? '',
      'long': long ?? '',
      'id_kategori': idKategori ?? ''
    };
    // log(formData.toString());
    return await http.post("api/psc", data: formData, onSuccess: (response) {
      return response;
    });
  }
}
