import 'dart:convert';

import 'package:bebunge/src/core/api_result.dart';
import 'package:bebunge/src/network/repositories/bebeli_repository_impl.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../config/ux_constants.dart';
import '../../../core/network_exceptions.dart';

part 'bebeli_added_event.dart';
part 'bebeli_added_state.dart';
part 'bebeli_added_bloc.freezed.dart';

class BebeliAddedBloc extends Bloc<BebeliAddedEvent, BebeliAddedState> {
  BebeliAddedBloc() : super(_Initial()) {
    on<BebeliAddedEvent>((event, emit) async {
      var pref = await SharedPreferences.getInstance();

      await event.when(
        started: (idProduct, qty) async {
          String? code = pref.getString(UXConstants.kodeTransaksi);
          if (code == null) {
            String? newCode =
                DateFormat('yyyyMMddHHmmss').format(DateTime.now());
            pref.setString(UXConstants.kodeTransaksi, newCode);
          }
          String? transaction = await pref.getString(UXConstants.kodeTransaksi);
          String? auth = await pref.getString(UXConstants.bebeliAccount);
          if (auth != null && auth.isNotEmpty) {
            emit(BebeliAddedState.loading());
            Map<String, dynamic> userMap =
                jsonDecode(auth) as Map<String, dynamic>;
            final ApiResult<Response> apiResult = await BebeliRepositoryImpl()
                .addCart(
                    username: userMap['username'],
                    pp: userMap['type'],
                    token: userMap['token'],
                    transactionCode: transaction,
                    productId: idProduct,
                    qty: qty);
            apiResult.when(
              success: (data) => emit(BebeliAddedState.loaded(data)),
              failure: (error) => emit(BebeliAddedState.error(error)),
            );
          }
        },
      );
    });
  }
  @override
  void onEvent(BebeliAddedEvent event) {
    Logger().d(event);
    super.onEvent(event);
  }

  @override
  void onChange(Change<BebeliAddedState> change) {
    Logger().d(change);
    super.onChange(change);
  }
}
