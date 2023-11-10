import 'package:bebunge/src/network/model/harga_pasar/harga_pasar.dart';

import '../../core/api_result.dart';

abstract class HargaPasarRepository {
  Future<ApiResult<String?>> getToken();
  Future<ApiResult<List<HargaPasarMod>>> getHargaPasar({String? date});
}
