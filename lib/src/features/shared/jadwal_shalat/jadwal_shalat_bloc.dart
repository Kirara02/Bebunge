import 'dart:convert';

import 'package:bebunge/src/config/ux_constants.dart';
import 'package:bebunge/src/core/api_result.dart';
import 'package:bebunge/src/network/repositories/jadwal_shalat_repository_impl.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/network_exceptions.dart';
import '../../../network/model/jadwal_shalat/jadwal_shalat_mod.dart';

part 'jadwal_shalat_event.dart';
part 'jadwal_shalat_state.dart';
part 'jadwal_shalat_bloc.freezed.dart';

class JadwalShalatBloc extends Bloc<JadwalShalatEvent, JadwalShalatState> {
  JadwalShalatBloc() : super(_Initial()) {
    on<JadwalShalatEvent>((event, emit) async {
      await event.when(
        started: (lat, long) async {
          emit(JadwalShalatState.loading());
          var pref = await SharedPreferences.getInstance();
          var localData = await pref.getString(UXConstants.jadwalShalat);

          //ANCHOR - check local data has data
          if (localData != null) {
            var restore = jsonDecode(localData);

            final jadwal = JadwalShalatMod.fromJson(restore);
            String timeNow = DateFormat('dd-MM-yyyy').format(DateTime.now());
            //ANCHOR - check local data sync with now time
            if (jadwal.date.gregorian.date != timeNow) {
              //ANCHOR - load from Api
              final ApiResult<Response> apiResult =
                  await JadwalShalatRepositoryImpl().getJadwalShalat(
                      date: DateFormat('dd-MM-yyyy').format(DateTime.now()),
                      lat: lat,
                      long: long);
              apiResult.when(
                  success: (data) {
                    //ANCHOR - Set from Api to Local Data
                    var localDataToString = jsonEncode(data.data);
                    pref.setString(UXConstants.jadwalShalat, localDataToString);
                    //ANCHOR - Send Directly from Api
                    return emit(JadwalShalatState.loaded(
                        JadwalShalatMod.fromJson(data.data['data'])));
                  },
                  failure: (error) => emit(JadwalShalatState.error(error)));
            } else {
              emit(JadwalShalatState.loaded(jadwal));
            }
          }
          //ANCHOR - local data null
          else {
            //ANCHOR - get from Api
            final ApiResult<Response> apiResult =
                await JadwalShalatRepositoryImpl().getJadwalShalat(
                    date: DateFormat('dd-MM-yyyy').format(DateTime.now()),
                    lat: lat,
                    long: long);
            apiResult.when(
                success: (data) {
                  //ANCHOR - Set from Api to Local Data
                  var localDataToString = jsonEncode(data.data);
                  pref.setString(UXConstants.jadwalShalat, localDataToString);
                  //ANCHOR - Send Directly from Api
                  return emit(JadwalShalatState.loaded(
                      JadwalShalatMod.fromJson(data.data['data'])));
                },
                failure: (error) => emit(JadwalShalatState.error(error)));
          }
        },
      );
    });
  }
  @override
  void onEvent(JadwalShalatEvent event) {
    Logger().d(event);
    super.onEvent(event);
  }

  @override
  void onChange(Change<JadwalShalatState> change) {
    Logger().d(change);
    super.onChange(change);
  }
}
