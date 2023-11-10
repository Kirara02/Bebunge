import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../core/api_result.dart';
import '../data_source/common/http.dart';
import '../model/auth/auth_mod.dart';
import 'auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  late UXHttp http;

  AuthRepositoryImpl() {
    http = UXHttp(
      xBaseUrl: dotenv.env['BASEURL_APIBEBUNGETEST'],
    );
  }

  @override
  Future<ApiResult<AuthMod>> login(
      {required String email, required String password}) async {
    return await http.post("api/login",
        data: {'email': email, 'password': password},
        onSuccess: (response) => AuthMod.fromJson(response.data));
  }
}
