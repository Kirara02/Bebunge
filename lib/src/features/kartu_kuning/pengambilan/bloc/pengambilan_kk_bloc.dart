import 'package:bebunge/src/core/api_result.dart';
import 'package:bebunge/src/core/network_exceptions.dart';
import 'package:bebunge/src/network/model/kartu_kuning/formulir/formulir_kk.dart';
import 'package:bebunge/src/network/model/kartu_kuning/user/user_kk.dart';
import 'package:bebunge/src/network/repositories/kartu_kuning_repository_impl.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

import '../../../../network/model/kartu_kuning/card/kartu_kuning_mod.dart';

part 'pengambilan_kk_event.dart';
part 'pengambilan_kk_state.dart';
part 'pengambilan_kk_bloc.freezed.dart';

class PengambilanKkBloc extends Bloc<PengambilanKkEvent, PengambilanKkState> {
  PengambilanKkBloc() : super(_Initial()) {
    on<PengambilanKkEvent>((event, emit) async {
      await event.when(
        getUser: () async {
          final ApiResult<UserKk> result =
              await KartuKuningRepositoryImpl().getUser();

          result.when(
            success: (data) => emit(PengambilanKkState.loadedUser(data)),
            failure: (error) => emit(PengambilanKkState.error(error)),
          );
        },
        getKartuKuning: () async {
          final ApiResult<KartuKuningMod> result =
              await KartuKuningRepositoryImpl().getKartu();

          result.when(
            success: (data) => emit(PengambilanKkState.loaded(data)),
            failure: (error) => emit(PengambilanKkState.error(error)),
          );
        },
        pengajuan: (pickup_by, pickup_date, pickup_place) async {
          final ApiResult<FormulirKk> result = await KartuKuningRepositoryImpl()
              .pengajuan(by: pickup_by, date: pickup_date, place: pickup_place);

          result.when(
            success: (data) => emit(PengambilanKkState.loadedPengajuan(data)),
            failure: (error) => emit(PengambilanKkState.error(error)),
          );
        },
      );
    });
  }
}
