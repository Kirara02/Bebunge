import 'package:bebunge/src/core/api_result.dart';
import 'package:bebunge/src/network/repositories/beranda_repository_impl.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/network_exceptions.dart';
import '../../../network/model/beranda/beranda_slider_mod.dart';

part 'beranda_slider_event.dart';
part 'beranda_slider_state.dart';
part 'beranda_slider_bloc.freezed.dart';

class BerandaSliderBloc extends Bloc<BerandaSliderEvent, BerandaSliderState> {
  BerandaSliderBloc() : super(_Initial()) {
    on<BerandaSliderEvent>((event, emit) async {
      await event.when(
        started: () async {
          emit(BerandaSliderState.loading());
          final ApiResult<List<BerandaSliderMod>> apiResult =
              await BerandaRepositoryImpl().getSlider();
          apiResult.when(
            success: (data) => emit(BerandaSliderState.loaded(data)),
            failure: (error) => emit(BerandaSliderState.error(error)),
          );
        },
      );
    });
  }
}
