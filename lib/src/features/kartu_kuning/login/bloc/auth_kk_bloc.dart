import 'package:bebunge/src/network/model/kartu_kuning/login/login_kk.dart';
import 'package:bebunge/src/network/model/kartu_kuning/user/user_kk.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/api_result.dart';
import '../../../../core/network_exceptions.dart';
import '../../../../network/repositories/auth_kk_reposiroty_impl.dart';

part 'auth_kk_event.dart';
part 'auth_kk_state.dart';
part 'auth_kk_bloc.freezed.dart';

class AuthKkBloc extends Bloc<AuthKkEvent, AuthKkState> {
  AuthKkBloc() : super(_Initial()) {
    on<AuthKkEvent>((event, emit) async {
      var pref = await SharedPreferences.getInstance();
      await event.when(
        userLogin: (email, password) async {
          emit(AuthKkState.loading());
          final ApiResult<LoginKk> apiResult = await AuthKkRepositoryImpl()
              .login(email: email, password: password);
          apiResult.when(
            success: (data) {
              Logger().e(data.user);
              pref.setString(
                "token_kk",
                data.token ?? '',
              );

              emit(AuthKkState.isAuthenticated(data.token!, data.user!));
            },
            failure: (error) => emit(AuthKkState.error(error)),
          );
        },
        userLogout: () async {
          emit(AuthKkState.loading());
          // var pref = await SecureSharedPref.getInstance();
          pref.remove('token_kk');
          pref.remove('status_kk');
          emit(AuthKkState.unAuthenticated());
        },
        checkStatus: () async {
          emit(AuthKkState.loading());
          String? token = await pref.getString("token_kk");
          Logger().e(token);

          if (token != null && token.isNotEmpty) {
            // emit(AuthKkState.isAuthenticated(token));
          } else {
            emit(AuthKkState.unAuthenticated());
          }
        },
      );
    });
  }

  @override
  void onEvent(AuthKkEvent event) {
    Logger().d(event);
    super.onEvent(event);
  }

  @override
  void onChange(Change<AuthKkState> change) {
    Logger().d(change);
    super.onChange(change);
  }
}
