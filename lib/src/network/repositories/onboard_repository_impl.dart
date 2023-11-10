import 'dart:convert';

import 'package:bebunge/src/network/model/onboard/onboard_mod.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import '../../core/api_result.dart';
import '../../core/network_exceptions.dart';
import 'onboard_repository.dart';

class OnboardRepositoryImpl implements OnboardRepository {
  @override
  Future<ApiResult<List<OnboardMod>>> getOnboard() async {
    try {
      Uri url = Uri.parse(
          '${dotenv.env['BASEURL_APIBEBUNGETEST']}api/onboard/filter');
      final response = await http.get(
        url,
      );
      var responseData = json.decode(response.body);
      return ApiResult.success(
          data: (responseData['data'] as List)
              .map((e) => OnboardMod.fromJson(e))
              .toList());
    } on NetworkExceptions catch (e) {
      return ApiResult.failure(error: e);
    } catch (e) {
      Logger().e(e);
      throw Exception(e.toString());
    }
  }
}
