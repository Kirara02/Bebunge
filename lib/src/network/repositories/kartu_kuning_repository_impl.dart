import 'package:bebunge/src/network/model/kartu_kuning/card/kartu_kuning_mod.dart';
import 'package:bebunge/src/network/model/kartu_kuning/formulir/desa_mod.dart';
import 'package:bebunge/src/network/model/kartu_kuning/formulir/desired_wages_mod.dart';
import 'package:bebunge/src/network/model/kartu_kuning/formulir/education_mod.dart';
import 'package:bebunge/src/network/model/kartu_kuning/formulir/kecamatan_mod.dart';
import 'package:bebunge/src/network/model/kartu_kuning/formulir/language_mod.dart';
import 'package:bebunge/src/network/model/kartu_kuning/formulir/marital_status_mod.dart';
import 'package:bebunge/src/network/model/kartu_kuning/formulir/occupation_mod.dart';
import 'package:bebunge/src/network/model/kartu_kuning/formulir/religion_mod.dart';
import 'package:bebunge/src/network/model/kartu_kuning/quota/quota_mod.dart';
import 'package:bebunge/src/network/model/kartu_kuning/user/user_kk.dart';
import 'package:bebunge/src/network/repositories/kartu_kuning_repository.dart';
import 'package:bebunge/src/widgets/common/preferences.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:logger/logger.dart';

import '../../core/api_result.dart';
import '../data_source/common/http.dart';
import '../model/kartu_kuning/formulir/formulir_kk.dart';
import '../model/kartu_kuning/formulir/major_mod.dart';

class KartuKuningRepositoryImpl implements KartuKuningRepository {
  late UXHttp http;
  final prefs = Preference.load();

  KartuKuningRepositoryImpl() {
    http = UXHttp(
      xBaseUrl: dotenv.env['BASEURL_KARTU_KUNING'],
      defaultAuthorization: Preference().getString('token_kk'),
    );
  }

  @override
  Future<ApiResult<FormulirKk>> tahap1({
    required FormData data,
  }) async {
    return await http.post(
      "api/v1/submission/step1",
      data: data,
      customAuthorization: Preference().getString('token_kk'),
      onSuccess: (response) => FormulirKk.fromJson(response.data),
    );
  }

  @override
  Future<ApiResult<FormulirKk>> tahap2({
    required FormData data,
  }) async {
    return await http.post(
      "api/v1/submission/step2",
      data: data,
      customAuthorization: Preference().getString('token_kk'),
      onSuccess: (response) => FormulirKk.fromJson(response.data),
    );
  }

  @override
  Future<ApiResult<List<LanguageMod>>> getBahasa() async {
    return await http.get(
      'api/v1/submission/languages',
      authorization: true,
      customAuthorization: Preference().getString('token_kk'),
      onSuccess: (response) => (response.data['data'] as List)
          .map((e) => LanguageMod.fromJson(e))
          .toList(),
    );
  }

  @override
  Future<ApiResult<List<MajorMod>>> getJurusan({
    required String education,
  }) async {
    return await http.get('api/v1/submission/majors?education=$education',
        authorization: true,
        customAuthorization: Preference().getString('token_kk'),
        onSuccess: (response) => (response.data['data'] as List)
            .map((e) => MajorMod.fromJson(e))
            .toList());
  }

  @override
  Future<ApiResult<List<KecamatanMod>>> getKecamatan() async {
    return await http.get(
      'api/v1/submission/subdistricts',
      authorization: true,
      customAuthorization: Preference().getString('token_kk'),
      onSuccess: (response) => (response.data['data'] as List)
          .map((e) => KecamatanMod.fromJson(e))
          .toList(),
    );
  }

  @override
  Future<ApiResult<List<DesaMod>>> getDesa({
    required String kecamatan,
  }) async {
    return await http.get('api/v1/submission/villages?subdistrict=$kecamatan',
        authorization: true,
        customAuthorization: Preference().getString('token_kk'),
        onSuccess: (response) => (response.data['data'] as List)
            .map((e) => DesaMod.fromJson(e))
            .toList());
  }

  @override
  Future<ApiResult<List<EducationMod>>> getPendidikan() async {
    return await http.get(
      'api/v1/submission/educations',
      authorization: true,
      customAuthorization: Preference().getString('token_kk'),
      onSuccess: (response) => (response.data['data'] as List)
          .map((e) => EducationMod.fromJson(e))
          .toList(),
    );
  }

  @override
  Future<ApiResult<List<OccupationMod>>> getPekerjaan() async {
    return await http.get(
      'api/v1/submission/occupations',
      authorization: true,
      customAuthorization: Preference().getString('token_kk'),
      onSuccess: (response) => (response.data['data'] as List)
          .map((e) => OccupationMod.fromJson(e))
          .toList(),
    );
  }

  @override
  Future<ApiResult<KartuKuningMod>> getKartu() async {
    return await http.get(
      "api/v1/card",
      authorization: true,
      customAuthorization: Preference().getString('token_kk'),
      onSuccess: (response) => KartuKuningMod.fromJson(response.data['data']),
    );
  }

  @override
  Future<ApiResult<UserKk>> getUser() async {
    return await http.get(
      "api/v1/user",
      authorization: true,
      customAuthorization: Preference().getString('token_kk'),
      onSuccess: (response) => UserKk.fromJson(response.data['data']),
    );
  }

  @override
  Future<ApiResult<FormulirKk>> pengajuan({
    required String by,
    required String date,
    required String place,
  }) async {
    return await http.post(
      "api/v1/card-taking",
      data: {
        'pickup_by': by,
        'pickup_date': date,
        'pickup_location': place,
      },
      customAuthorization: Preference().getString('token_kk'),
      onSuccess: (response) => FormulirKk.fromJson(response.data),
    );
  }

  @override
  Future<ApiResult<List<DesiredWagesMod>>> getDesiredWages() async {
    return await http.get(
      'api/v1/submission/options/desired_wages',
      authorization: true,
      customAuthorization: Preference().getString('token_kk'),
      onSuccess: (response) => (response.data['data'] as List)
          .map((e) => DesiredWagesMod.fromJson(e))
          .toList(),
    );
  }

  @override
  Future<ApiResult<List<MaritalStatusMod>>> getMaritalStatus() async {
    return await http.get(
      'api/v1/submission/options/marital_status',
      authorization: true,
      customAuthorization: Preference().getString('token_kk'),
      onSuccess: (response) => (response.data['data'] as List)
          .map((e) => MaritalStatusMod.fromJson(e))
          .toList(),
    );
  }

  @override
  Future<ApiResult<List<ReligionMod>>> getReligion() async {
    return await http.get(
      'api/v1/submission/options/religion',
      authorization: true,
      customAuthorization: Preference().getString('token_kk'),
      onSuccess: (response) => (response.data['data'] as List)
          .map((e) => ReligionMod.fromJson(e))
          .toList(),
    );
  }
}
