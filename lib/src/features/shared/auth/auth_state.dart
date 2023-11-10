part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.isAuthenticated(String token) = _IsAuthenticated;
  const factory AuthState.unAuthenticated() = _UnAuthenticated;
  const factory AuthState.error(NetworkExceptions error) = _Error;
}
