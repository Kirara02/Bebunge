part of 'forgot_pass_kk_bloc.dart';

@freezed
class ForgotPassKkState with _$ForgotPassKkState {
  const factory ForgotPassKkState.initial() = _Initial;
  const factory ForgotPassKkState.loading() = _Loading;
  const factory ForgotPassKkState.success(DefaultResponse data) = _Success;
  const factory ForgotPassKkState.error(NetworkExceptions error) = _Error;

}
