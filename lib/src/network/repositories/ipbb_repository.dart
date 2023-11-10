import 'package:bebunge/src/network/model/ipbb/ipbb_mod.dart';

import '../../core/api_result.dart';

abstract class IpbbRepository {
  Future<ApiResult<IPBBMod>> getIpbb({String? nopNumber});
}
