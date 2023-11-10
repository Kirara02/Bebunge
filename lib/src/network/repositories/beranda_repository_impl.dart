import 'package:bebunge/src/network/model/beranda/beranda_slider_mod.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../core/api_result.dart';
import '../data_source/common/http.dart';

import 'beranda_repository.dart';

class BerandaRepositoryImpl implements BerandaRepository {
  late UXHttp http;

  BerandaRepositoryImpl() {
    http = UXHttp(
      xBaseUrl: dotenv.env['BASEURL_APIBEBUNGETEST'],
    );
  }
  @override
  Future<ApiResult<List<BerandaSliderMod>>> getSlider() async {
    return await http.get("api/slider/filter",
        onSuccess: (response) => (response.data['data'] as List)
            .map((e) => BerandaSliderMod.fromJson(e))
            .toList());
  }
}
