import 'package:bebunge/src/network/model/kartu_kuning/booking/booking_mod.dart';
import 'package:bebunge/src/network/model/kartu_kuning/quota/quota_mod.dart';

import '../../core/api_result.dart';

abstract class BookingRepository {
  Future<ApiResult<BookingMod>> booking({required String date});
  Future<ApiResult<BookingMod>> checkBooking({required String code});
  Future<ApiResult<QuotaMod>> checkQuota();
}
