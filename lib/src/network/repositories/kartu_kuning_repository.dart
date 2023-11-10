import 'package:bebunge/src/network/model/kartu_kuning/card/kartu_kuning_mod.dart';
import 'package:bebunge/src/network/model/kartu_kuning/formulir/desa_mod.dart';
import 'package:bebunge/src/network/model/kartu_kuning/formulir/desired_wages_mod.dart';
import 'package:bebunge/src/network/model/kartu_kuning/formulir/education_mod.dart';
import 'package:bebunge/src/network/model/kartu_kuning/formulir/formulir_kk.dart';
import 'package:bebunge/src/network/model/kartu_kuning/formulir/kecamatan_mod.dart';
import 'package:bebunge/src/network/model/kartu_kuning/formulir/language_mod.dart';
import 'package:bebunge/src/network/model/kartu_kuning/formulir/marital_status_mod.dart';
import 'package:bebunge/src/network/model/kartu_kuning/formulir/religion_mod.dart';
import 'package:bebunge/src/network/model/kartu_kuning/quota/quota_mod.dart';
import 'package:bebunge/src/network/model/kartu_kuning/user/user_kk.dart';
import 'package:dio/dio.dart';

import '../../core/api_result.dart';
import '../model/kartu_kuning/formulir/major_mod.dart';
import '../model/kartu_kuning/formulir/occupation_mod.dart';

abstract class KartuKuningRepository {
  Future<ApiResult<FormulirKk>> tahap1({
    required FormData data,
  });

  Future<ApiResult<FormulirKk>> tahap2({
    required FormData data,
  });

  Future<ApiResult<List<KecamatanMod>>> getKecamatan();

  Future<ApiResult<List<EducationMod>>> getPendidikan();

  Future<ApiResult<List<MajorMod>>> getJurusan({
    required String education,
  });
  Future<ApiResult<List<DesaMod>>> getDesa({
    required String kecamatan,
  });

  Future<ApiResult<List<LanguageMod>>> getBahasa();
  Future<ApiResult<List<OccupationMod>>> getPekerjaan();
  Future<ApiResult<List<ReligionMod>>> getReligion();
  Future<ApiResult<List<MaritalStatusMod>>> getMaritalStatus();
  Future<ApiResult<List<DesiredWagesMod>>> getDesiredWages();

  Future<ApiResult<UserKk>> getUser();

  Future<ApiResult<KartuKuningMod>> getKartu();

  Future<ApiResult<FormulirKk>> pengajuan({
    required String by,
    required String date,
    required String place,
  });
}
