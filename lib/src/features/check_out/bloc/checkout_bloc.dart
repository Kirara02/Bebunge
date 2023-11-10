import 'package:bebunge/src/core/api_result.dart';
import 'package:bebunge/src/network/repositories/bebeli_repository_impl.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

import '../../../core/network_exceptions.dart';

part 'checkout_event.dart';
part 'checkout_state.dart';
part 'checkout_bloc.freezed.dart';

class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  CheckoutBloc() : super(_Initial()) {
    on<CheckoutEvent>((event, emit) async {
      await event.when(
        started: (params) async {
          emit(CheckoutState.loading());
          final ApiResult<Response> apiResult =
              await BebeliRepositoryImpl().pemesanan(params: params);

          apiResult.when(
            success: (data) => emit(CheckoutState.loaded(data)),
            failure: (error) => emit(CheckoutState.error(error)),
          );
        },
      );
    });
  }
  @override
  void onEvent(CheckoutEvent event) {
    Logger().d(event);
    super.onEvent(event);
  }

  @override
  void onChange(Change<CheckoutState> change) {
    Logger().d(change);
    super.onChange(change);
  }
}
