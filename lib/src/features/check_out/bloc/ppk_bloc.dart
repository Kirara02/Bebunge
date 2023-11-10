import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../config/ux_constants.dart';
import '../../../core/api_result.dart';
import '../../../core/network_exceptions.dart';
import '../../../network/model/bebeli/ppk_item.dart';
import '../../../network/repositories/bebeli_repository_impl.dart';

part 'ppk_event.dart';
part 'ppk_state.dart';
part 'ppk_bloc.freezed.dart';

class PpkBloc extends Bloc<PpkEvent, PpkState> {
  PpkBloc() : super(_Initial()) {
    on<PpkEvent>((event, emit) async {
      var pref = await SharedPreferences.getInstance();
      await event.when(
        started: (idSkpd, user) async {
          emit(PpkState.loading());
          String? member = await pref.getString(UXConstants.bebeliAccount);
          if (member != null && member.isNotEmpty) {
            Map<String, dynamic> userMap =
                jsonDecode(member) as Map<String, dynamic>;
            final ApiResult<List<PpkItem>> apiResult =
                await BebeliRepositoryImpl().getPpk(
                    username: userMap['username'],
                    pp: userMap['type'],
                    token: userMap['token'],
                    idSkpd: idSkpd,
                    user: user);
            apiResult.when(
              success: (data) => emit(PpkState.loaded(data)),
              failure: (error) => emit(PpkState.error(error)),
            );
          }
        },
      );
    });
  }
}
