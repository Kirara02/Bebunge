import 'dart:convert';
import 'dart:io';

import 'package:bebunge/src/core/network_exceptions.dart';
import 'package:bebunge/src/network/model/harga_pasar/harga_pasar.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';
import 'package:http/io_client.dart';
import 'package:http_interceptor/http_interceptor.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/api_result.dart';
import '../data_source/common/http.dart';
import '../data_source/common/http_manual.dart';
import 'harga_pasar_repository.dart';

class HargaPasarRepositoryImpl implements HargaPasarRepository {
  final client = InterceptedClient.build(
      interceptors: [AuthorizationInterceptor()],
      retryPolicy: ExpiredTokenRetryPolicy());

  late UXHttp http;
  late UXHttp http2;

  HargaPasarRepositoryImpl() {
    http = UXHttp(xBaseUrl: dotenv.env['BASE_URL_SILINDA_JABAR']);
  }

  @override
  Future<ApiResult<String?>> getToken() async {
    try {
      HttpClient client = HttpClient()
        ..badCertificateCallback =
            ((X509Certificate cert, String host, int port) => true);
      var ioClient = IOClient(client);

      Uri url =
          Uri.parse('${dotenv.env['BASEURL_SILINDA_JABAR_TOKEN']}oauth2/token');
      final response = await ioClient.post(
          headers: {
            'content-type': 'application/x-www-form-urlencoded',
            'Authorization':
                'Basic eHBPZmJNVXc5Qkd6ZXd2OWZ4d19zNTgwbWswYTowN2VUaHo0M01pZ1g2SGV3VnBHVWtPUlhaZWNh',
          },
          url,
          encoding: Encoding.getByName('utf-8'),
          body: {
            'grant_type': 'client_credentials',
            'scope': 'silinda_creator'
          });

      var responseData = json.decode(response.body);
      Logger().d(responseData['access_token']);
      var pref = await SharedPreferences.getInstance();
      await pref.setString('bebeliToken', responseData['access_token']);
      return ApiResult.success(data: responseData['access_token']);
    } on NetworkExceptions catch (e) {
      return ApiResult.failure(error: e);
    } catch (e) {
      Logger().e(e);
      throw Exception(e.toString());
    }
  }

  @override
  Future<ApiResult<List<HargaPasarMod>>> getHargaPasar({String? date}) async {
    Uri url = Uri.parse(
      '${dotenv.env['BASEURL_SILINDA_JABAR']}silinda/1/api_v2/transaction/integration_find',
    );

    var pref = await SharedPreferences.getInstance();
    var token = pref.getString('bebeliToken');

    try {
      var param = {'length': '100', 'market_id': '12', 'time': date};
      final Response response = await client.post(url,
          headers: {
            'Accept': 'application/json',
            'Authorization': 'Bearer $token',
            'Content-Type': 'application/json',
          },
          body: jsonEncode(param));

      var responseData = json.decode(response.body);
      return ApiResult.success(
          data: (responseData['data'] as List)
              .map((e) => HargaPasarMod.fromJson(e))
              .toList());
    } on NetworkExceptions catch (e) {
      return ApiResult.failure(error: e);
    } catch (e) {
      print(e);
      throw Exception(e.toString());
    }
  }
}
