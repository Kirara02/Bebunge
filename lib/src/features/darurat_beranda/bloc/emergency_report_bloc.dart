import 'package:bebunge/src/core/api_result.dart';
import 'package:bebunge/src/network/repositories/darurat_repository_impl.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

import '../../../core/network_exceptions.dart';

part 'emergency_report_event.dart';
part 'emergency_report_state.dart';
part 'emergency_report_bloc.freezed.dart';

class EmergencyReportBloc
    extends Bloc<EmergencyReportEvent, EmergencyReportState> {
  EmergencyReportBloc() : super(_Initial()) {
    on<EmergencyReportEvent>((event, emit) async {
      await event.when(
        started: (nama, tlp, alamat, kategoriEvent, lokasi, lat, lon) async {
          emit(EmergencyReportState.loading());
          final ApiResult<Response> apiResult = await DaruratRepositoryImpl()
              .sos(
                  nama: nama,
                  telepon: tlp,
                  alamatPelapor: alamat,
                  idKategori: kategoriEvent,
                  lokasi: lokasi,
                  lat: lat,
                  long: lon);
          apiResult.when(
            success: (data) => emit(EmergencyReportState.loaded(data)),
            failure: (error) => emit(EmergencyReportState.error(error)),
          );
        },
      );
    });
  }
  @override
  void onEvent(EmergencyReportEvent event) {
    Logger().d(event);
    super.onEvent(event);
  }

  @override
  void onChange(Change<EmergencyReportState> change) {
    Logger().d(change);
    super.onChange(change);
  }
}
