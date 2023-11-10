import 'package:bebunge/src/core/api_result.dart';
import 'package:bebunge/src/core/default_response.dart';
import 'package:bebunge/src/core/network_exceptions.dart';
import 'package:bebunge/src/network/repositories/auth_kk_reposiroty_impl.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_pass_kk_event.dart';
part 'forgot_pass_kk_state.dart';
part 'forgot_pass_kk_bloc.freezed.dart';

class ForgotPassKkBloc extends Bloc<ForgotPassKkEvent, ForgotPassKkState> {
  ForgotPassKkBloc() : super(const ForgotPassKkState.initial()) {
    on<ForgotPassKkEvent>((event, emit) async {
      await event.when(
        sendEmail: (email) async {
          emit(ForgotPassKkState.loading());
          ApiResult<DefaultResponse> result =
              await AuthKkRepositoryImpl().forgotPassword(email: email);

          result.when(
            success: (data) => emit(ForgotPassKkState.success(data)),
            failure: (error) => emit(ForgotPassKkState.error(error)),
          );
        },
        sendOtp: (email, otp) async {
          emit(ForgotPassKkState.loading());
          ApiResult<DefaultResponse> result =
              await AuthKkRepositoryImpl().sendOtp(email: email, otp: otp);

          result.when(
            success: (data) => emit(ForgotPassKkState.success(data)),
            failure: (error) => emit(ForgotPassKkState.error(error)),
          );
        },
        changePassword: (email, otp, password, confirmPassword) async {
          emit(ForgotPassKkState.loading());
          ApiResult<DefaultResponse> result =
              await AuthKkRepositoryImpl().changePassword(
            email: email,
            otp: otp,
            password: password,
            confirmPassword: confirmPassword,
          );

          result.when(
            success: (data) => emit(ForgotPassKkState.success(data)),
            failure: (error) => emit(ForgotPassKkState.error(error)),
          );
        },
      );
    });
  }
}
