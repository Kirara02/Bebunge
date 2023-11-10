import 'package:bebunge/gen/assets.gen.dart';
import 'package:bebunge/l10n/locale_keys.g.dart';
import 'package:bebunge/src/config/theme/colors.dart';
import 'package:bebunge/src/config/ux_constants.dart';
import 'package:bebunge/src/features/kartu_kuning/forgot_password/bloc/forgot_pass_kk_bloc.dart';
import 'package:bebunge/src/features/kartu_kuning/login/view/kartu_kuning_login.dart';
import 'package:bebunge/src/features/kartu_kuning/widget/kartu_kuning_form.dart';
import 'package:bebunge/src/widgets/button/button.dart';
import 'package:bebunge/src/widgets/dialogs/ux_toast_wrapper.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:page_transition/page_transition.dart';

class ChangePasswordKkPage extends StatefulWidget {
  final String email;
  final String otp;
  const ChangePasswordKkPage({
    super.key,
    required this.email,
    required this.otp,
  });

  @override
  State<ChangePasswordKkPage> createState() => _ChangePasswordKkPageState();
}

class _ChangePasswordKkPageState extends State<ChangePasswordKkPage> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  _changePassword(BuildContext context) async {
    if (passwordController.text.isEmpty) {
      UXToast.show(
        message: "Password belum diisi",
        backgroundColor: UXAppColors.danger,
        textColor: UXColors.white,
      );
    } else if (confirmPasswordController.text.isEmpty) {
      UXToast.show(
        message: "Password Konfirmasi belum diisi",
        backgroundColor: UXAppColors.danger,
        textColor: UXColors.white,
      );
    } else {
      context.read<ForgotPassKkBloc>()
        ..add(ForgotPassKkEvent.changePassword(
          email: widget.email,
          otp: widget.otp,
          password: passwordController.text,
          confirmPassword: confirmPasswordController.text,
        ));
    }
  }

  _dialogSuccess(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return Dialog(
          insetPadding: EdgeInsets.symmetric(horizontal: 16),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 36),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Assets.images.checkMark.image(
                  width: 80,
                  height: 80,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  LocaleKeys.yellow_card_change_password_dialog_title.tr(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: UXConstants.kFontSizeXL,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  LocaleKeys.yellow_card_change_password_dialog_subtitle.tr(),
                  style: TextStyle(
                    fontSize: UXConstants.kFontSizeS,
                    color: UXColors.custom_grey3.withOpacity(0.8),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                UXButton(
                  title: LocaleKeys.yellow_card_button_next.tr(),
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pushAndRemoveUntil(
                      context,
                      PageTransition(
                          child: KartuKuningLogin(),
                          type: PageTransitionType.fade),
                      (route) => false,
                    );
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 80),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Assets.images.privacyPolicy.image(width: 175),
              const SizedBox(
                height: 36,
              ),
              Text(
                LocaleKeys.yellow_card_change_password_title.tr(),
                style: TextStyle(
                  fontSize: UXConstants.kFontSizeXXL,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                LocaleKeys.yellow_card_change_password_subtitle.tr(),
              ),
              const SizedBox(
                height: 28,
              ),
              KartuKuningForm(
                title: LocaleKeys.yellow_card_title_form_text_new_password.tr(),
                controller: passwordController,
                obsecureText: true,
              ),
              const SizedBox(
                height: 20,
              ),
              KartuKuningForm(
                title: LocaleKeys.yellow_card_title_form_text_new_password.tr(),
                controller: confirmPasswordController,
                obsecureText: true,
              ),
              const SizedBox(
                height: 24,
              ),
              BlocProvider(
                create: (context) => ForgotPassKkBloc(),
                child: BlocConsumer<ForgotPassKkBloc, ForgotPassKkState>(
                  listener: (context, state) {
                    state.maybeWhen(
                      orElse: () {},
                      loading: () => UXToast.show(
                          message: 'Sedang Mengirim Data',
                          backgroundColor: UXAppColors.gojekBlue,
                          textColor: UXAppColors.biru2),
                      success: (data) {
                        Logger().v(data);
                        _dialogSuccess(context);
                      },
                      error: (error) async {
                        await error.maybeWhen(
                          orElse: () {},
                          badRequest: (reason) {
                            Logger().e(reason);
                            UXToast.show(
                                message: reason,
                                backgroundColor: UXAppColors.danger,
                                textColor: UXColors.white);
                          },
                          unprocessableEntity: (reasons) {
                            // Logger().e(reasons?.errors?.values);
                            List<dynamic> errorMessages = reasons
                                    ?.errors?.values
                                    .map((valueList) => valueList.isNotEmpty
                                        ? valueList[0]
                                        : '')
                                    .toList() ??
                                [];

                            String fullErrorMessage = '${errorMessages[0]}';

                            UXToast.show(
                              message: fullErrorMessage,
                              backgroundColor: UXAppColors.danger,
                              textColor: UXColors.white,
                            );
                          },
                        );
                      },
                    );
                  },
                  builder: (context, state) {
                    return UXButton(
                      title: LocaleKeys.yellow_card_button_oke.tr(),
                      onPressed: () => _changePassword(context),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
