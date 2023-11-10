import 'package:bebunge/src/network/model/kartu_kuning/formulir/desa_mod.dart';
import 'package:bebunge/src/network/model/kartu_kuning/formulir/desired_wages_mod.dart';
import 'package:bebunge/src/network/model/kartu_kuning/formulir/education_mod.dart';
import 'package:bebunge/src/network/model/kartu_kuning/formulir/formulir_kk.dart';
import 'package:bebunge/src/network/model/kartu_kuning/formulir/kecamatan_mod.dart';
import 'package:bebunge/src/network/model/kartu_kuning/formulir/language_mod.dart';
import 'package:bebunge/src/network/model/kartu_kuning/formulir/major_mod.dart';
import 'package:bebunge/src/network/model/kartu_kuning/formulir/marital_status_mod.dart';
import 'package:bebunge/src/network/model/kartu_kuning/formulir/occupation_mod.dart';
import 'package:bebunge/src/network/model/kartu_kuning/formulir/religion_mod.dart';
import 'package:bebunge/src/network/repositories/kartu_kuning_repository_impl.dart';
import 'package:bebunge/src/widgets/common/preferences.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

import '../../../../core/api_result.dart';
import '../../../../core/network_exceptions.dart';

part 'formulir_kk_event.dart';
part 'formulir_kk_state.dart';
part 'formulir_kk_bloc.freezed.dart';

class FormulirKkBloc extends Bloc<FormulirKkEvent, FormulirKkState> {
  FormulirKkBloc() : super(_Initial()) {
    on<FormulirKkEvent>((event, emit) async {
      await event.when(
        formTahap1: (params) async {
          emit(FormulirKkState.loading());
          final ApiResult<FormulirKk> apiResult =
              await KartuKuningRepositoryImpl().tahap1(data: params!);
          apiResult.when(
            success: (data) => emit(FormulirKkState.loaded(data)),
            failure: (error) => emit(FormulirKkState.error(error)),
          );
        },
        formTahap2: (params) async {
          emit(FormulirKkState.loading());
          final ApiResult<FormulirKk> apiResult =
              await KartuKuningRepositoryImpl().tahap2(data: params!);
          apiResult.when(
            success: (data) {
              Preference().setString('status_kk', 'Sedang Di Proses');
              emit(FormulirKkState.loaded(data));
            },
            failure: (error) => emit(FormulirKkState.error(error)),
          );
        },
        getKecamatan: () async {
          final ApiResult<List<KecamatanMod>> result =
              await KartuKuningRepositoryImpl().getKecamatan();

          result.when(
            success: (data) {
              // Modify the name field of each KecamatanMod object
              List<KecamatanMod> modifiedData = data
                  .map((kecamatan) => KecamatanMod(name: kecamatan.name))
                  .toList();

              emit(FormulirKkState.loadedKecamatan(modifiedData));
            },
            failure: (error) => emit(FormulirKkState.error(error)),
          );
        },
        getDesa: (kec) async {
          final ApiResult<List<DesaMod>> result =
              await KartuKuningRepositoryImpl().getDesa(kecamatan: kec!);
          result.when(
            success: (data) {
              Logger().v(data);
              emit(FormulirKkState.loadedDesa(data));
            },
            failure: (error) => emit(FormulirKkState.error(error)),
          );
        },
        getBahasa: () async {
          final ApiResult<List<LanguageMod>> result =
              await KartuKuningRepositoryImpl().getBahasa();

          result.when(
            success: (data) {
              List<LanguageMod> modifiedData = data
                  .map((language) => LanguageMod(name: language.name))
                  .toList();

              emit(FormulirKkState.loadedBahasa(modifiedData));
            },
            failure: (error) => emit(FormulirKkState.error(error)),
          );
        },
        getPendidikan: () async {
          final ApiResult<List<EducationMod>> result =
              await KartuKuningRepositoryImpl().getPendidikan();

          result.when(
            success: (data) {
              List<EducationMod> modifiedData = data
                  .map((education) => EducationMod(name: education.name))
                  .toList();
              emit(FormulirKkState.loadedPendidikan(modifiedData));
            },
            failure: (error) => emit(FormulirKkState.error(error)),
          );
        },
        getJurusan: (edu) async {
          final ApiResult<List<MajorMod>> result =
              await KartuKuningRepositoryImpl().getJurusan(education: edu!);

          result.when(
            success: (data) => emit(FormulirKkState.loadedJurusan(data)),
            failure: (error) => emit(FormulirKkState.error(error)),
          );
        },
        getPekerjaan: () async {
          final ApiResult<List<OccupationMod>> result =
              await KartuKuningRepositoryImpl().getPekerjaan();

          result.when(
            success: (data) => emit(FormulirKkState.loadedPekerjaan(data)),
            failure: (error) => emit(FormulirKkState.error(error)),
          );
        },
        getReligion: () async {
          final ApiResult<List<ReligionMod>> result =
              await KartuKuningRepositoryImpl().getReligion();

          result.when(
            success: (data) => emit(FormulirKkState.loadedReligion(data)),
            failure: (error) => emit(FormulirKkState.error(error)),
          );
        },
        getDesiredWages: () async {
          final ApiResult<List<DesiredWagesMod>> result =
              await KartuKuningRepositoryImpl().getDesiredWages();

          result.when(
            success: (data) => emit(FormulirKkState.loadedDesiredWages(data)),
            failure: (error) => emit(FormulirKkState.error(error)),
          );
        },
        getMaritalStatus: () async {
          final ApiResult<List<MaritalStatusMod>> result =
              await KartuKuningRepositoryImpl().getMaritalStatus();

          result.when(
            success: (data) => emit(FormulirKkState.loadedMaritalStatus(data)),
            failure: (error) => emit(FormulirKkState.error(error)),
          );
        },
      );
    });
  }
}
