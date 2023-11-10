import 'package:bebunge/src/network/model/bebeli/bebeli_filter_kec.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:logger/logger.dart';

import '../../core/api_result.dart';
import '../data_source/common/http.dart';
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
import '../model/bebeli/skpd_item.dart';
import 'bebeli_repository.dart';

class BebeliRepositoryImpl implements BebeliRepository {
  late UXHttp http;

  BebeliRepositoryImpl() {
    http = UXHttp(
      xBaseUrl: dotenv.env['BASEURL_BEBELI'],
    );
  }

  @override
  Future<ApiResult<BebeliPaging>> getProductFiltered(
      {BebeliParams? filter}) async {
    final formData = FormData.fromMap({
      "cari": filter!.cari ?? "",
      "kat": filter.kat ?? "",
      "sub": filter.sub ?? "",
      "kec": filter.kec ?? "",
      "kel": filter.kel ?? "",
      "tokoe": filter.toko ?? "",
      "start": filter.start ?? ""
    });
    return await http.post("combobox/getdatapro",
        authorization: false, data: formData, onSuccess: (response) {
      return BebeliPaging.fromJson(response.data);
    });
  }

  @override
  Future<ApiResult<List<BebeliSliderImg>>> getSliderImage() async {
    return await http.get("combobox/getsliderhome", onSuccess: (response) {
      return (response.data['data'] as List)
          .map((e) => BebeliSliderImg.fromJson(e))
          .toList();
    });
  }

  @override
  Future<ApiResult<List<BebeliCategorySlide>>> getCategorySlide() async {
    return await http.get("combobox/getkategorihome", onSuccess: (response) {
      return (response.data['data'] as List)
          .map((e) => BebeliCategorySlide.fromJson(e))
          .toList();
    });
  }

  @override
  Future<ApiResult<List<BebeliFilterKec>>> getListKecamatan(
      {String? searchText, String? id}) async {
    final formData = FormData.fromMap({
      "id": id ?? "",
      "text": searchText ?? "",
    });
    return await http.post("combobox/kecamatan", data: formData,
        onSuccess: (response) {
      return (response.data['data'] as List)
          .map((e) => BebeliFilterKec.fromJson(e))
          .toList();
    });
  }

  @override
  Future<ApiResult<List<BebeliFilterKel>>> getListKelurahan(
      {String? search, String? kecId, String? kelId}) async {
    final formData = FormData.fromMap(
        {'text': search ?? '', 'kecamatan': kecId ?? '', 'id': kelId ?? ''});
    return await http.post("combobox/kelurahan", data: formData,
        onSuccess: (response) {
      return (response.data['data'] as List)
          .map((e) => BebeliFilterKel.fromJson(e))
          .toList();
    });
  }

  @override
  Future<ApiResult<List<FilterToko>>> getToko(
      {String? id, String? toko}) async {
    final formData = FormData.fromMap({'toko': toko ?? '', 'id': id ?? ''});
    return await http.post("combobox/gettoko", data: formData,
        onSuccess: (response) {
      return (response.data['data'] as List)
          .map((e) => FilterToko.fromJson(e))
          .toList();
    });
  }

  @override
  Future<ApiResult<List<BebeliFilterCat>>> getListCategory(
      {String? id, String? text}) async {
    final formData = FormData.fromMap({'id': id ?? '', 'text': text ?? ''});
    return await http.post("combobox/kategori", data: formData,
        onSuccess: (response) {
      return (response.data['data'] as List)
          .map((e) => BebeliFilterCat.fromJson(e))
          .toList();
    });
  }

  @override
  Future<ApiResult<List<BebeliFilterSubCat>>> getListSubCategory(
      {String? id, String? text, String? kategori}) async {
    final formData = FormData.fromMap(
        {'id': id ?? '', 'text': text ?? '', 'kategori': kategori ?? ''});
    return await http.post("combobox/sub", data: formData,
        onSuccess: (response) {
      return (response.data['data'] as List)
          .map((e) => BebeliFilterSubCat.fromJson(e))
          .toList();
    });
  }

  @override
  Future<ApiResult<BebeliProductDetail>> getProductDetail({String? Id}) async {
    return await http.get("combobox/getdatapro/$Id", onSuccess: (response) {
      return BebeliProductDetail.fromJson(response.data['data'][0]);
    });
  }

  @override
  Future<ApiResult<BebeliMember>> getAccountToken(
      {String? user, String? pass}) async {
    final formData = FormData.fromMap({'user': user ?? '', 'pass': pass ?? ''});
    return await http.post("combobox/getdatalog", data: formData,
        onSuccess: (response) {
      return BebeliMember.fromJson(response.data['data']);
    });
  }

  @override
  Future<ApiResult<BebeliCartMod>> viewCart(
      {String? username,
      String? pp,
      String? token,
      String? transactionCode}) async {
    final formData = FormData.fromMap({
      'username': username ?? '',
      'type': pp ?? '',
      'token': token ?? '',
      'kode_transaksi': transactionCode ?? ''
    });
    return await http.post("combobox/view_cart", data: formData,
        onSuccess: (response) {
      return BebeliCartMod.fromJson(response.data);
    });
  }

  @override
  Future<ApiResult<Response>> addCart(
      {String? username,
      String? pp,
      String? token,
      String? transactionCode,
      String? productId,
      String? qty}) async {
    final formData = FormData.fromMap({
      'username': username ?? '',
      'type': pp ?? '',
      'token': token ?? '',
      'kode_transaksi': transactionCode ?? '',
      'id_produk': productId ?? '',
      'qty': qty ?? ''
    });
    return await http.post("combobox/add_cart", data: formData,
        onSuccess: (response) {
      return response;
    });
  }

  @override
  Future<ApiResult<Response>> deleteCart({
    String? username,
    String? pp,
    String? token,
    String? transactionCode,
    String? productId,
  }) async {
    final formData = FormData.fromMap({
      'username': username ?? '',
      'type': pp ?? '',
      'token': token ?? '',
      'kode_transaksi': transactionCode ?? '',
      'id_produk': productId ?? '',
    });
    return await http.post("combobox/delete_cart", data: formData,
        onSuccess: (response) {
      return response;
    });
  }

  @override
  Future<ApiResult<List<SkpdItem>>> getSKPD({
    String? username,
    String? pp,
    String? token,
    String? skpd,
  }) async {
    final formData = FormData.fromMap({
      'username': username ?? '',
      'type': pp ?? '',
      'token': token ?? '',
      'skpd': skpd ?? '',
    });
    return await http.post("combobox/getskpd", data: formData,
        onSuccess: (response) {
      return (response.data['data'] as List)
          .map((e) => SkpdItem.fromJson(e))
          .toList();
    });
  }

  @override
  Future<ApiResult<List<PpkItem>>> getPpk(
      {String? username,
      String? pp,
      String? token,
      String? idSkpd,
      String? user}) async {
    final formData = FormData.fromMap({
      'username': username ?? '',
      'type': pp ?? '',
      'token': token ?? '',
      'id_skpd': idSkpd ?? '',
      'user': user ?? ''
    });
    return await http.post("combobox/getppk", data: formData,
        onSuccess: (response) {
      return (response.data['data'] as List)
          .map((e) => PpkItem.fromJson(e))
          .toList();
    });
  }

  @override
  Future<ApiResult<Response>> pemesanan({
    dynamic params,
  }) async {
    return await http.post("combobox/checkout", data: params,
        onSuccess: (response) {
      Logger().e(response.data);
      return response;
    });
  }
}
