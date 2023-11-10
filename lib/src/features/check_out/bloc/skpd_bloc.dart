import 'dart:convert';

import 'package:bebunge/src/core/api_result.dart';
import 'package:bebunge/src/network/repositories/bebeli_repository_impl.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../config/ux_constants.dart';
import '../../../core/network_exceptions.dart';
import '../../../network/model/bebeli/skpd_item.dart';

part 'skpd_event.dart';
part 'skpd_state.dart';
part 'skpd_bloc.freezed.dart';

class SkpdBloc extends Bloc<SkpdEvent, SkpdState> {
  SkpdBloc() : super(_Initial()) {
    on<SkpdEvent>((event, emit) async {
      var pref = await SharedPreferences.getInstance();
      await event.when(started: (skpd) async {
        emit(SkpdState.loading());
        String? member = await pref.getString(UXConstants.bebeliAccount);
        if (member != null && member.isNotEmpty) {
          Map<String, dynamic> userMap =
              jsonDecode(member) as Map<String, dynamic>;
          final ApiResult<List<SkpdItem>> apiResult =
              await BebeliRepositoryImpl().getSKPD(
                  username: userMap['username'],
                  pp: userMap['type'],
                  token: userMap['token'],
                  skpd: skpd);
          apiResult.when(
            success: (data) => emit(SkpdState.loaded(data)),
            failure: (error) => emit(SkpdState.error(error)),
          );
        }
      });
    });
  }
  @override
  void onEvent(SkpdEvent event) {
    Logger().d(event);
    super.onEvent(event);
  }

  @override
  void onChange(Change<SkpdState> change) {
    Logger().d(change);
    super.onChange(change);
  }
}
