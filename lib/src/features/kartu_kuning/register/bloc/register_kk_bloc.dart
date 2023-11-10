import 'package:bebunge/src/core/api_result.dart';
import 'package:bebunge/src/network/model/kartu_kuning/register/register_kk.dart';
import 'package:bebunge/src/network/repositories/auth_kk_reposiroty_impl.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/network_exceptions.dart';

part 'register_kk_event.dart';
part 'register_kk_state.dart';
part 'register_kk_bloc.freezed.dart';

class RegisterKkBloc extends Bloc<RegisterKkEvent, RegisterKkState> {
  RegisterKkBloc() : super(_Initial()) {
    on<RegisterKkEvent>((event, emit) async {
      await event.when(
        started: (params) async {
          emit(RegisterKkState.loading());
          final ApiResult<RegisterKk> apiResult =
              await AuthKkRepositoryImpl().register(data: params!);
          apiResult.when(
            success: (data) => emit(RegisterKkState.loaded(data)),
            failure: (error) => emit(RegisterKkState.error(error)),
          );
        },
      );
    });
  }
}
