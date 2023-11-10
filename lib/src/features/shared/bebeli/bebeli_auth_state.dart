part of 'bebeli_auth_bloc.dart';

@freezed
class BebeliAuthState with _$BebeliAuthState {
  const factory BebeliAuthState.initial() = _Initial;
  const factory BebeliAuthState.loading() = _Loading;
  const factory BebeliAuthState.isAuthenticated(BebeliMember data) =
      _IsAuthenticated;
  const factory BebeliAuthState.unAutheticated() = _UnAuthenticated;
  const factory BebeliAuthState.error(NetworkExceptions error) = _Error;
}
