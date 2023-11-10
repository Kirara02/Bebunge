import 'package:bebunge/src/core/api_result.dart';
import 'package:bebunge/src/network/repositories/harga_pasar_repository_impl.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

import '../../../core/network_exceptions.dart';
import '../../../network/model/harga_pasar/harga_pasar.dart';

part 'harga_pasar_event.dart';
part 'harga_pasar_state.dart';
part 'harga_pasar_bloc.freezed.dart';

class HargaPasarBloc extends Bloc<HargaPasarEvent, HargaPasarState> {
  HargaPasarBloc() : super(_Initial()) {
    on<HargaPasarEvent>((event, emit) async {
      await event.when(
        started: (date) async {
          emit(HargaPasarState.loading());

          final ApiResult<List<HargaPasarMod>> apiResult =
              await HargaPasarRepositoryImpl().getHargaPasar(date: date);
          apiResult.when(
            success: (data) {
              emit(HargaPasarState.loaded(data));
            },
            failure: (error) => emit(HargaPasarState.error(error)),
          );
          // }
        },
      );
    });
  }
  @override
  void onEvent(HargaPasarEvent event) {
    Logger().d(event);
    super.onEvent(event);
  }

  @override
  void onChange(Change<HargaPasarState> change) {
    Logger().d(change);
    super.onChange(change);
  }
}
