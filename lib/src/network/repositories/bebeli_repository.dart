import 'package:bebunge/src/network/model/bebeli/bebeli_filter_kec.dart';
import 'package:bebunge/src/network/model/bebeli/skpd_item.dart';
import 'package:dio/dio.dart';

import '../../core/api_result.dart';
import '../model/bebeli/bebeli_cart_mod.dart';
import '../model/bebeli/bebeli_category_slide.dart';
import '../model/bebeli/bebeli_filter_cat.dart';
import '../model/bebeli/bebeli_filter_kel.dart';
import '../model/bebeli/bebeli_filter_sub_cat.dart';
import '../model/bebeli/bebeli_member.dart';
import '../model/bebeli/bebeli_paging.dart';
import '../model/bebeli/bebeli_params.dart';
import '../model/bebeli/bebeli_product_detail.dart';
import '../model/bebeli/bebeli_slider_img.dart';
import '../model/bebeli/filter_toko.dart';
import '../model/bebeli/ppk_item.dart';

abstract class BebeliRepository {
  Future<ApiResult<BebeliPaging>> getProductFiltered({BebeliParams filter});
  Future<ApiResult<List<BebeliSliderImg>>> getSliderImage();
  Future<ApiResult<List<BebeliCategorySlide>>> getCategorySlide();

  Future<ApiResult<List<BebeliFilterKec>>> getListKecamatan();

  Future<ApiResult<List<FilterToko>>> getToko();

  Future<ApiResult<List<BebeliFilterKel>>> getListKelurahan();

  Future<ApiResult<List<BebeliFilterCat>>> getListCategory();

  Future<ApiResult<List<BebeliFilterSubCat>>> getListSubCategory();

  Future<ApiResult<BebeliProductDetail>> getProductDetail();

  Future<ApiResult<BebeliMember>> getAccountToken();

  Future<ApiResult<BebeliCartMod>> viewCart();

  Future<ApiResult<Response>> addCart(
      {String? username,
      String? pp,
      String? token,
      String? transactionCode,
      String? productId,
      String? qty});

  Future<ApiResult<Response>> deleteCart(
      {String? username,
      String? pp,
      String? token,
      String? transactionCode,
      String? productId});

  Future<ApiResult<List<SkpdItem>>> getSKPD({
    String? username,
    String? pp,
    String? token,
    String? skpd,
  });

  Future<ApiResult<List<PpkItem>>> getPpk({
    String? username,
    String? pp,
    String? token,
    String? idSkpd,
  });

  Future<ApiResult<Response>> pemesanan({dynamic params});
}
