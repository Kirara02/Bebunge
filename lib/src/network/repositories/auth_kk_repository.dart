import 'package:bebunge/src/core/default_response.dart';
import 'package:bebunge/src/network/model/kartu_kuning/login/login_kk.dart';
import 'package:dio/dio.dart';

import '../../core/api_result.dart';
import '../model/kartu_kuning/register/register_kk.dart';

abstract class AuthKkRepository {
  Future<ApiResult<LoginKk>> login({
    required String email,
    required String password,
  });

  Future<ApiResult<RegisterKk>> register({
    required FormData data,
  });

  Future<ApiResult<DefaultResponse>> forgotPassword({required String email});
  Future<ApiResult<DefaultResponse>> sendOtp({
    required String email,
    required String otp,
  });
  Future<ApiResult<DefaultResponse>> changePassword({
    required String email,
    required String otp,
    required String password,
    required String confirmPassword,
  });
}
