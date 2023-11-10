import 'dart:convert';

import 'package:bebunge/src/config/ux_constants.dart';
import 'package:bebunge/src/core/api_result.dart';
import 'package:bebunge/src/network/model/bebeli/bebeli_member.dart';
import 'package:bebunge/src/network/repositories/bebeli_repository_impl.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/network_exceptions.dart';

part 'bebeli_auth_event.dart';
part 'bebeli_auth_state.dart';
part 'bebeli_auth_bloc.freezed.dart';

class BebeliAuthBloc extends Bloc<BebeliAuthEvent, BebeliAuthState> {
  BebeliAuthBloc() : super(_Initial()) {
    on<BebeliAuthEvent>((event, emit) async {
      var pref = await SharedPreferences.getInstance();
      await event.when(
        userLogin: (user, pass) async {
          emit(BebeliAuthState.loading());
          final ApiResult<BebeliMember> apiResult = await BebeliRepositoryImpl()
              .getAccountToken(user: user, pass: pass);
          apiResult.when(
            success: (data) async {
              Logger().d(data.token);
              Map<String, dynamic> user = {
                'username': data.username ?? "",
                'type': data.type ?? "",
                'token': data.token ?? ""
              };
              pref.setString(UXConstants.bebeliAccount, jsonEncode(user));
              emit(BebeliAuthState.isAuthenticated(data));
            },
            failure: (error) => emit(BebeliAuthState.error(error)),
          );
        },
        userLogout: () async {
          emit(BebeliAuthState.loading());
          pref.remove(UXConstants.bebeliAccount);
          emit(BebeliAuthState.unAutheticated());
        },
        checkStatus: () async {
          emit(BebeliAuthState.loading());
          String? member = await pref.getString(UXConstants.bebeliAccount);
          if (member != null && member.isNotEmpty) {
            Map<String, dynamic> userMap =
                jsonDecode(member) as Map<String, dynamic>;
            emit(BebeliAuthState.isAuthenticated(
                BebeliMember.fromJson(userMap)));
          } else {
            emit(BebeliAuthState.unAutheticated());
          }
        },
      );
    });
  }
  @override
  void onEvent(BebeliAuthEvent event) {
    Logger().d(event);
    super.onEvent(event);
  }

  @override
  void onChange(Change<BebeliAuthState> change) {
    Logger().d(change);
    super.onChange(change);
  }
}
