import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/api_result.dart';
import '../../../core/network_exceptions.dart';
import '../../../network/model/auth/auth_mod.dart';
import '../../../network/repositories/auth_repository_impl.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(_Initial()) {
    on<AuthEvent>((event, emit) async {
      var pref = await SharedPreferences.getInstance();
      await event.when(
        userLogin: (email, password) async {
          emit(AuthState.loading());
          // var pref = await SecureSharedPref.getInstance();
          final ApiResult<AuthMod> apiResult = await AuthRepositoryImpl()
              .login(email: email, password: password);
          apiResult.when(
            success: (data) {
              Logger().e(data.token);
              pref.setString(
                "token",
                data.token ?? "",
              );
              emit(AuthState.isAuthenticated(data.token!));
            },
            failure: (error) => emit(AuthState.error(error)),
          );
        },
        userLogout: () async {
          emit(AuthState.loading());
          // var pref = await SecureSharedPref.getInstance();
          pref.remove('token');
          emit(AuthState.unAuthenticated());
        },
        checkStatus: () async {
          emit(AuthState.loading());
          String? token = await pref.getString("token");
          Logger().e(token);

          if (token != null && token.isNotEmpty) {
            emit(AuthState.isAuthenticated(token));
          } else {
            emit(AuthState.unAuthenticated());
          }
        },
      );
    });
  }
  @override
  void onEvent(AuthEvent event) {
    Logger().d(event);
    super.onEvent(event);
  }

  @override
  void onChange(Change<AuthState> change) {
    Logger().d(change);
    super.onChange(change);
  }
}
