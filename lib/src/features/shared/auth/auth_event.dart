part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.userLogin(
      {required String email, required String password}) = _UserLogin;
  const factory AuthEvent.userLogout() = _UserLogout;
  const factory AuthEvent.checkStatus() = _CheckStatus;
}
