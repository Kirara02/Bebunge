import 'package:bebunge/src/core/api_result.dart';
import 'package:bebunge/src/network/repositories/onboard_repository_impl.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

import '../../../core/network_exceptions.dart';
import '../../../network/model/onboard/onboard_mod.dart';

part 'onboard_event.dart';
part 'onboard_state.dart';
part 'onboard_bloc.freezed.dart';

class OnboardBloc extends Bloc<OnboardEvent, OnboardState> {
  OnboardBloc() : super(_Initial()) {
    on<OnboardEvent>((event, emit) async {
      await event.when(
        started: () async {
          emit(OnboardState.loading());
          final ApiResult<List<OnboardMod>> apiResult =
              await OnboardRepositoryImpl().getOnboard();
          apiResult.when(
            success: (data) => emit(OnboardState.loaded(data)),
            failure: (error) => emit(OnboardState.error(error)),
          );
        },
      );
    });
  }
  @override
  void onEvent(OnboardEvent event) {
    Logger().d(event);
    super.onEvent(event);
  }

  @override
  void onChange(Change<OnboardState> change) {
    Logger().d(change);
    super.onChange(change);
  }
}
