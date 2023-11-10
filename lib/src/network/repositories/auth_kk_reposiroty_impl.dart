import 'package:bebunge/src/core/default_response.dart';
import 'package:bebunge/src/network/model/kartu_kuning/login/login_kk.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../core/api_result.dart';
import '../data_source/common/http.dart';
import '../model/kartu_kuning/register/register_kk.dart';
import 'auth_kk_repository.dart';

class AuthKkRepositoryImpl implements AuthKkRepository {
  late UXHttp http;

  AuthKkRepositoryImpl() {
    http = UXHttp(
      xBaseUrl: dotenv.env['BASEURL_KARTU_KUNING'],
    );
  }

  @override
  Future<ApiResult<LoginKk>> login(
      {required String email, required String password}) async {
    return await http.post("api/v1/auth/login",
        data: {'email': email, 'password': password},
        onSuccess: (response) => LoginKk.fromJson(response.data['data']));
  }

  @override
  Future<ApiResult<RegisterKk>> register({
    required FormData data,
  }) async {
    return await http.post(
      "api/v1/auth/register",
      data: data,
      onSuccess: (response) => RegisterKk.fromJson(response.data),
    );
  }

  @override
  Future<ApiResult<DefaultResponse>> forgotPassword(
      {required String email}) async {
    return await http.post(
      "api/v1/auth/forgot",
      data: {"email": email},
      onSuccess: (response) => DefaultResponse.fromJson(response.data),
    );
  }

  @override
  Future<ApiResult<DefaultResponse>> changePassword({
    required String email,
    required String otp,
    required String password,
    required String confirmPassword,
  }) async {
    return await http.post(
      "api/v1/auth/reset",
      data: {
        "email": email,
        "otp_code": otp,
        "password": password,
        "password_confirmation": confirmPassword,
      },
      onSuccess: (response) => DefaultResponse.fromJson(response.data),
    );
  }

  @override
  Future<ApiResult<DefaultResponse>> sendOtp({
    required String email,
    required String otp,
  }) async {
    return await http.post(
      "api/v1/auth/otp",
      data: {
        "email": email,
        "otp_code": otp,
      },
      onSuccess: (response) => DefaultResponse.fromJson(response.data),
    );
  }
}
