import 'dart:convert';

import 'package:bebunge/src/config/ux_constants.dart';
import 'package:bebunge/src/core/api_result.dart';
import 'package:bebunge/src/network/repositories/bebeli_repository_impl.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/network_exceptions.dart';
import '../../../network/model/bebeli/bebeli_cart_mod.dart';

part 'bebeli_keranjang_event.dart';
part 'bebeli_keranjang_state.dart';
part 'bebeli_keranjang_bloc.freezed.dart';

class BebeliKeranjangBloc
    extends Bloc<BebeliKeranjangEvent, BebeliKeranjangState> {
  BebeliKeranjangBloc() : super(_Initial()) {
    on<BebeliKeranjangEvent>((event, emit) async {
      var pref = await SharedPreferences.getInstance();
      await event.when(
        started: () async {
          emit(BebeliKeranjangState.loading());
          //ANCHOR - get account from sharedpref
          String? member = await pref.getString(UXConstants.bebeliAccount);
          String? transactionCode =
              await pref.getString(UXConstants.kodeTransaksi);
          if (member != null && member.isNotEmpty) {
            Map<String, dynamic> userMap =
                jsonDecode(member) as Map<String, dynamic>;
            final ApiResult<BebeliCartMod> apiResult =
                await BebeliRepositoryImpl().viewCart(
                    username: userMap['username'],
                    pp: userMap['type'],
                    token: userMap['token'],
                    transactionCode: transactionCode);
            apiResult.when(
              success: (data) {
                emit(BebeliKeranjangState.loaded(data));
              },
              failure: (error) => emit(BebeliKeranjangState.error(error)),
            );
          }
        },
      );
    });
  }
  @override
  void onEvent(BebeliKeranjangEvent event) {
    Logger().d(event);
    super.onEvent(event);
  }

  @override
  void onChange(Change<BebeliKeranjangState> change) {
    Logger().d(change);
    super.onChange(change);
  }
}
