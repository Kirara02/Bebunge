part of 'auth_kk_bloc.dart';

@freezed
class AuthKkState with _$AuthKkState {
  const factory AuthKkState.initial() = _Initial;
  const factory AuthKkState.loading() = _Loading;
  const factory AuthKkState.isAuthenticated(String token, UserKk user) = _IsAuthenticated;
  const factory AuthKkState.unAuthenticated() = _UnAuthenticated;
  const factory AuthKkState.error(NetworkExceptions error) = _Error;
}
