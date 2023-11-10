part of 'forgot_pass_kk_bloc.dart';

@freezed
class ForgotPassKkEvent with _$ForgotPassKkEvent {
  const factory ForgotPassKkEvent.sendEmail({required String email}) =
      _SendEmail;
  const factory ForgotPassKkEvent.sendOtp({
    required String email,
    required String otp,
  }) = _SendOtp;
  const factory ForgotPassKkEvent.changePassword({
    required String email,
    required String otp,
    required String password,
    required String confirmPassword,
  }) = _ChangePassword;
}
