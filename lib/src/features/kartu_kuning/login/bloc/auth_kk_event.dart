part of 'auth_kk_bloc.dart';

@freezed
class AuthKkEvent with _$AuthKkEvent {
  const factory AuthKkEvent.userLogin(
      {required String email, required String password}) = _UserLogin;
  const factory AuthKkEvent.userLogout() = _UserLogout;
  const factory AuthKkEvent.checkStatus() = _CheckStatus;
}
