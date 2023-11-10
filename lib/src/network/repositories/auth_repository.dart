import '../../core/api_result.dart';
import '../model/auth/auth_mod.dart';

abstract class AuthRepository {
  Future<ApiResult<AuthMod>> login(
      {required String email, required String password});
}
