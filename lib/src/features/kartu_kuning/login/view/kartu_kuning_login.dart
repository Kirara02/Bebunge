// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:bebunge/l10n/locale_keys.g.dart';
import 'package:bebunge/src/config/theme/colors.dart';
import 'package:bebunge/src/config/ux_constants.dart';
import 'package:bebunge/src/features/beranda/view/beranda.dart';
import 'package:bebunge/src/features/kartu_kuning/booking/view/booking_page.dart';
import 'package:bebunge/src/features/kartu_kuning/forgot_password/view/forgot_password_kk_page.dart';
import 'package:bebunge/src/features/kartu_kuning/formulir/view/kartu_kuning_tahap_1.dart';
import 'package:bebunge/src/features/kartu_kuning/login/bloc/auth_kk_bloc.dart';
import 'package:bebunge/src/features/kartu_kuning/pengambilan/view/kartu_kuning_page.dart';
import 'package:bebunge/src/features/kartu_kuning/widget/kartu_kuning_form.dart';
import 'package:bebunge/src/utils/dismiss_keyboard.dart';
import 'package:bebunge/src/widgets/button/button.dart';
import 'package:bebunge/src/widgets/common/preferences.dart';
import 'package:bebunge/src/widgets/wrapper/network_exception_extension.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import '../../../../widgets/dialogs/ux_toast_wrapper.dart';
import '../../register/view/kartu_kuning_register.dart';

class KartuKuningLogin extends StatefulWidget {
  const KartuKuningLogin({Key? key}) : super(key: key);

  @override
  State<KartuKuningLogin> createState() => _KartuKuningLoginState();
}

class _KartuKuningLoginState extends State<KartuKuningLogin> {
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passController = TextEditingController(text: '');

  late bool loading = false;

  _refresh() {
    emailController.clear();
    passController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthKkBloc(),
      child: WillPopScope(
        onWillPop: () async {
          Navigator.pushAndRemoveUntil(
              context,
              PageTransition(child: Beranda(), type: PageTransitionType.fade),
              (route) => false);
          return true;
        },
        child: Scaffold(
          body: Builder(builder: (context) {
            return BlocConsumer<AuthKkBloc, AuthKkState>(
              listener: (context, state) {
                state.maybeWhen(
                  orElse: () {},
                  isAuthenticated: (token, user) {
                    print(user);

                    if (user.status == 'Pengajuan') {
                      Preference().setString('status_kk', 'Pengajuan');

                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BookingPage(),
                          ),
                          (route) => false);
                    } else {
                      Preference().setString('status_kk', user.status);
                      pushDynamicScreen(context,
                          screen: PageTransition(
                              child: KartuKuningPage(),
                              type: PageTransitionType.rightToLeft),
                          withNavBar: true);
                    }
                    UXToast.show(
                        backgroundColor: UXAppColors.green,
                        textColor: UXColors.white,
                        message: 'Login Success');
                    _refresh();
                  },
                  unAuthenticated: () => UXToast.show(
                      backgroundColor: UXAppColors.green,
                      textColor: UXColors.white,
                      message: 'Akun tidak valid'),
                  error: (error) {
                    // FlashMessage.error(context: context, error: error, message: "");
                    UXToast.show(
                        backgroundColor: UXAppColors.danger,
                        textColor: UXColors.white,
                        message: error.messageDescription());
                  },
                );
              },
              builder: (context, state) {
                return Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          LocaleKeys.yellow_card_login_title.tr(),
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: UXConstants.kFontSizeL,
                          ),
                        ),
                        Text(
                          LocaleKeys.yellow_card_login_subtitle.tr(),
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: UXConstants.kFontSizeL,
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        KartuKuningForm(
                          title:
                              LocaleKeys.yellow_card_title_form_text_email.tr(),
                          decoration: InputDecoration(
                            hintText: 'johndoe@exmple.com',
                          ),
                          keyboardType: TextInputType.emailAddress,
                          controller: emailController,
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        KartuKuningForm(
                          title: LocaleKeys.yellow_card_title_form_text_password
                              .tr(),
                          decoration: InputDecoration(hintText: '********'),
                          controller: passController,
                          obsecureText: true,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: () {
                              pushDynamicScreen(context,
                                  screen: PageTransition(
                                      child: ForgotPasswordKkPage(),
                                      type: PageTransitionType.rightToLeft));
                            },
                            child: Text(
                              LocaleKeys.yellow_card_login_forgot_password.tr(),
                              style: TextStyle(
                                fontSize: UXConstants.kFontSizeS,
                                color: UXAppColors.grey3,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        UXButton(
                          title: LocaleKeys.yellow_card_button_login.tr(),
                          onPressed: () {
                            if (emailController.text.isEmpty) {
                              UXToast.show(
                                message: 'email belum terisi',
                                backgroundColor: UXAppColors.danger,
                                textColor: UXColors.white,
                              );
                            } else if (passController.text.isEmpty) {
                              UXToast.show(
                                message: 'password belum terisi',
                                backgroundColor: UXAppColors.danger,
                                textColor: UXColors.white,
                              );
                            } else {
                              context.read<AuthKkBloc>().add(
                                    AuthKkEvent.userLogin(
                                      email: emailController.text,
                                      password: passController.text,
                                    ),
                                  );
                              hideKeyboard(context);
                            }
                          },
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                                '${LocaleKeys.yellow_card_login_register_text.tr()} '),
                            GestureDetector(
                              onTap: () {
                                pushDynamicScreen(context,
                                    screen: PageTransition(
                                      child: KartuKuningRegister(),
                                      type: PageTransitionType.rightToLeft,
                                      duration: Duration(milliseconds: 400),
                                      reverseDuration:
                                          Duration(milliseconds: 400),
                                      curve: Curves.easeInOut,
                                    ),
                                    withNavBar: false);
                              },
                              child: Text(
                                LocaleKeys.yellow_card_button_register.tr(),
                                style: const TextStyle(
                                  color: UXAppColors.biru1,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }),
        ),
      ),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passController.dispose();
    super.dispose();
  }
}
