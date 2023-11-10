import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../config/ux_constants.dart';
import '../../../core/api_result.dart';
import '../../../core/network_exceptions.dart';
import '../../../network/repositories/bebeli_repository_impl.dart';

part 'bebeli_delete_cart_event.dart';
part 'bebeli_delete_cart_state.dart';
part 'bebeli_delete_cart_bloc.freezed.dart';

class BebeliDeleteCartBloc
    extends Bloc<BebeliDeleteCartEvent, BebeliDeleteCartState> {
  BebeliDeleteCartBloc() : super(_Initial()) {
    on<BebeliDeleteCartEvent>((event, emit) async {
      var pref = await SharedPreferences.getInstance();
      await event.when(
        started: (idProduct) async {
          emit(BebeliDeleteCartState.loading());
          String? member = await pref.getString(UXConstants.bebeliAccount);
          String? transactionCode =
              await pref.getString(UXConstants.kodeTransaksi);
          if (member != null && member.isNotEmpty) {
            Map<String, dynamic> userMap =
                jsonDecode(member) as Map<String, dynamic>;
            final ApiResult<Response> apiResult = await BebeliRepositoryImpl()
                .deleteCart(
                    username: userMap['username'],
                    pp: userMap['type'],
                    token: userMap['token'],
                    transactionCode: transactionCode,
                    productId: idProduct);
            apiResult.when(
              success: (data) {
                emit(BebeliDeleteCartState.loaded(data));
              },
              failure: (error) => emit(BebeliDeleteCartState.error(error)),
            );
          }
        },
      );
    });
  }

  @override
  void onEvent(BebeliDeleteCartEvent event) {
    Logger().d(event);
    super.onEvent(event);
  }

  @override
  void onChange(Change<BebeliDeleteCartState> change) {
    Logger().d(change);
    super.onChange(change);
  }
}
