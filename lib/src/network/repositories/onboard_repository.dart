import 'package:bebunge/src/network/model/onboard/onboard_mod.dart';

import '../../core/api_result.dart';

abstract class OnboardRepository {
  Future<ApiResult<List<OnboardMod>>> getOnboard();
}
