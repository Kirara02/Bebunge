import 'package:bebunge/gen/assets.gen.dart';
import 'package:bebunge/l10n/locale_keys.g.dart';
import 'package:bebunge/src/config/theme/colors.dart';
import 'package:bebunge/src/config/ux_constants.dart';
import 'package:bebunge/src/features/kartu_kuning/forgot_password/bloc/forgot_pass_kk_bloc.dart';
import 'package:bebunge/src/features/kartu_kuning/forgot_password/view/change_password_kk_page.dart';
import 'package:bebunge/src/features/kartu_kuning/forgot_password/widget/otp_custom.dart';
import 'package:bebunge/src/widgets/button/button.dart';
import 'package:bebunge/src/widgets/dialogs/ux_toast_wrapper.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:logger/logger.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class OtpKkPage extends StatefulWidget {
  final String email;
  const OtpKkPage({super.key, required this.email});

  @override
  State<OtpKkPage> createState() => _OtpKkPageState();
}

class _OtpKkPageState extends State<OtpKkPage> {
  TextEditingController otpController = TextEditingController();

  bool buttonEnable = false;

  @override
  void initState() {
    super.initState();
    otpController.addListener(updateButtonStatus);
  }

  void updateButtonStatus() {
    setState(() {
      buttonEnable = otpController.text.length == 6;
    });
  }

  _sendOtp(BuildContext context) async {
    if (buttonEnable) {
      context.read<ForgotPassKkBloc>()
        ..add(ForgotPassKkEvent.sendOtp(
          email: widget.email,
          otp: otpController.text,
        ));
    }
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
              Assets.images.securityPassword.image(width: 175),
              const SizedBox(
                height: 36,
              ),
              Text(
                LocaleKeys.yellow_card_otp_title.tr(),
                style: TextStyle(
                  fontSize: UXConstants.kFontSizeXXL,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                LocaleKeys.yellow_card_otp_subtitle.tr(),
              ),
              const SizedBox(
                height: 28,
              ),
              OtpCustom(controller: otpController),
              const SizedBox(
                height: 28,
              ),
              BlocProvider(
                create: (context) => ForgotPassKkBloc(),
                child: BlocConsumer<ForgotPassKkBloc, ForgotPassKkState>(
                  listener: (context, state) {
                    state.maybeWhen(
                      orElse: () {},
                      loading: () => UXToast.show(
                          message: 'Sedang Mengecek OTP',
                          backgroundColor: UXAppColors.gojekBlue,
                          textColor: UXAppColors.biru2,
                          toastGravity: ToastGravity.BOTTOM),
                      success: (data) {
                        Logger().v(data);
                        if (data.success!) {
                          pushDynamicScreen(context,
                              screen: PageTransition(
                                  child: ChangePasswordKkPage(
                                      email: widget.email,
                                      otp: otpController.text),
                                  type: PageTransitionType.rightToLeft));
                        }
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
                        );
                      },
                    );
                  },
                  builder: (context, state) {
                    return UXButton(
                      title: LocaleKeys.yellow_card_button_oke.tr(),
                      onPressed: buttonEnable ? () => _sendOtp(context) : null,
                      backgroundColor:
                          buttonEnable ? UXAppColors.primary : UXAppColors.grey,
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
