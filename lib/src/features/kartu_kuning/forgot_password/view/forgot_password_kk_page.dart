import 'package:bebunge/gen/assets.gen.dart';
import 'package:bebunge/l10n/locale_keys.g.dart';
import 'package:bebunge/src/config/theme/colors.dart';
import 'package:bebunge/src/config/ux_constants.dart';
import 'package:bebunge/src/core/network_exceptions.dart';
import 'package:bebunge/src/features/kartu_kuning/forgot_password/bloc/forgot_pass_kk_bloc.dart';
import 'package:bebunge/src/features/kartu_kuning/forgot_password/view/otp_kk_page.dart';
import 'package:bebunge/src/features/kartu_kuning/widget/kartu_kuning_form.dart';
import 'package:bebunge/src/widgets/button/button.dart';
import 'package:bebunge/src/widgets/dialogs/ux_toast_wrapper.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:logger/logger.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class ForgotPasswordKkPage extends StatefulWidget {
  const ForgotPasswordKkPage({super.key});

  @override
  State<ForgotPasswordKkPage> createState() => _ForgotPasswordKkPageState();
}

class _ForgotPasswordKkPageState extends State<ForgotPasswordKkPage> {
  TextEditingController emailController = TextEditingController();

  _sendEmail(BuildContext context) async {
    if (emailController.text.isEmpty) {
      UXToast.show(message: "Email harus diisi");
    } else {
      context.read<ForgotPassKkBloc>()
        ..add(ForgotPassKkEvent.sendEmail(email: emailController.text));
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
              Assets.images.sendMail.image(width: 175),
              const SizedBox(
                height: 36,
              ),
              Text(
                LocaleKeys.yellow_card_forgot_password_title.tr(),
                style: TextStyle(
                  fontSize: UXConstants.kFontSizeXXL,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                LocaleKeys.yellow_card_forgot_password_subtitle.tr(),
              ),
              const SizedBox(
                height: 28,
              ),
              KartuKuningForm(
                title: LocaleKeys.yellow_card_title_form_text_email.tr(),
                decoration: InputDecoration(
                    hintText: LocaleKeys.yellow_card_hint_form_text_email.tr()),
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 20,
              ),
              BlocProvider(
                create: (context) => ForgotPassKkBloc(),
                child: BlocConsumer<ForgotPassKkBloc, ForgotPassKkState>(
                  listener: (context, state) {
                    state.maybeWhen(
                      orElse: () {},
                      loading: () => UXToast.show(
                          message: 'Sedang Menggirim Data',
                          backgroundColor: UXAppColors.gojekBlue,
                          textColor: UXAppColors.biru2,
                          toastGravity: ToastGravity.BOTTOM),
                      success: (data) {
                        Logger().v(data);
                        UXToast.show(
                            backgroundColor: UXAppColors.green,
                            textColor: UXColors.white,
                            message: data.message);
                        pushDynamicScreen(context,
                            screen: PageTransition(
                                child: OtpKkPage(
                                  email: emailController.text,
                                ),
                                type: PageTransitionType.rightToLeft));
                      },
                      error: (error) async {
                        await error.maybeWhen(
                          orElse: () {},
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
                      title: LocaleKeys.yellow_card_button_send.tr(),
                      onPressed: () => _sendEmail(context),
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
