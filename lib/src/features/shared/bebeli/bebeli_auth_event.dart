part of 'bebeli_auth_bloc.dart';

@freezed
class BebeliAuthEvent with _$BebeliAuthEvent {
  const factory BebeliAuthEvent.userLogin({String? user, String? pass}) =
      _UserLogin;
  const factory BebeliAuthEvent.userLogout() = _UserLogout;
  const factory BebeliAuthEvent.checkStatus() = _CheckStatus;
}
