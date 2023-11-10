import 'package:bebunge/src/core/api_result.dart';
import 'package:bebunge/src/network/data_source/common/http.dart';
import 'package:bebunge/src/network/model/kartu_kuning/booking/booking_mod.dart';
import 'package:bebunge/src/network/model/kartu_kuning/quota/quota_mod.dart';
import 'package:bebunge/src/network/repositories/booking_repository.dart';
import 'package:bebunge/src/widgets/common/preferences.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class BookingRepositoryImpl implements BookingRepository {
  late UXHttp http;
  final prefs = Preference.load();

  BookingRepositoryImpl() {
    http = UXHttp(
      xBaseUrl: dotenv.env['BASEURL_KARTU_KUNING'],
      defaultAuthorization: Preference().getString('token_kk'),
    );
  }

  @override
  Future<ApiResult<BookingMod>> booking({required String date}) async {
    return await http.post(
      "api/v1/submission/booking",
      data: {"date": date},
      customAuthorization: Preference().getString('token_kk'),
      onSuccess: (response) => BookingMod.fromJson(response.data),
    );
  }

  @override
  Future<ApiResult<BookingMod>> checkBooking({required String code}) async {
    return await http.post(
      "api/v1/submission/booking/check",
      data: {"code": code},
      customAuthorization: Preference().getString('token_kk'),
      onSuccess: (response) => BookingMod.fromJson(response.data),
    );
  }

  @override
  Future<ApiResult<QuotaMod>> checkQuota() async {
    return await http.get(
      "api/v1/submission/check-quota",
      authorization: true,
      customAuthorization: Preference().getString('token_kk'),
      onSuccess: (response) => QuotaMod.fromJson(response.data),
    );
  }
}
