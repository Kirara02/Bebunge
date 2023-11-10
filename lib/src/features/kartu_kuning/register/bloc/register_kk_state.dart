part of 'register_kk_bloc.dart';

@freezed
class RegisterKkState with _$RegisterKkState {
  const factory RegisterKkState.initial() = _Initial;
  const factory RegisterKkState.loading() = _loading;
  const factory RegisterKkState.loaded(RegisterKk data) = _Loaded;
  const factory RegisterKkState.error(NetworkExceptions error) = _Error;
}
