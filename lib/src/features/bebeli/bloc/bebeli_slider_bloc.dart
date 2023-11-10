import 'package:bebunge/src/core/api_result.dart';
import 'package:bebunge/src/network/model/bebeli/bebeli_slider_img.dart';
import 'package:bebunge/src/network/repositories/bebeli_repository_impl.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/network_exceptions.dart';

part 'bebeli_slider_event.dart';
part 'bebeli_slider_state.dart';
part 'bebeli_slider_bloc.freezed.dart';

class BebeliSliderBloc extends Bloc<BebeliSliderEvent, BebeliSliderState> {
  BebeliSliderBloc() : super(_Initial()) {
    on<BebeliSliderEvent>((event, emit) async {
      await event.when(
        started: () async {
          emit(BebeliSliderState.loading());
          Future.delayed(Duration(seconds: 2));
          final ApiResult<List<BebeliSliderImg>> apiResult =
              await BebeliRepositoryImpl().getSliderImage();

          apiResult.when(
            success: (data) => emit(BebeliSliderState.loaded(data)),
            failure: (error) => emit(BebeliSliderState.error(error)),
          );
        },
      );
    });
  }
  // @override
  // void onEvent(BebeliSliderEvent event) {
  //   Logger().d(event);
  //   super.onEvent(event);
  // }

  // @override
  // void onChange(Change<BebeliSliderState> change) {
  //   Logger().d(change);
  //   super.onChange(change);
  // }
}
