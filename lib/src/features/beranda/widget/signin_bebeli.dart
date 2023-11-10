import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../l10n/locale_keys.g.dart';
import '../../../app/app_root.dart';
import '../../../config/theme/colors.dart';
import '../../../config/ux_constants.dart';
import '../../../utils/dismiss_keyboard.dart';
import '../../../widgets/button/button.dart';
import '../../../widgets/common/expand_size.dart';
import '../../../widgets/dialogs/ux_toast_wrapper.dart';
import '../../../widgets/forms/ux_input_custom.dart';
import '../../../widgets/wrapper/network_exception_extension.dart';
import '../../shared/auth/auth_bloc.dart';

class SigninBebeli extends StatefulWidget {
  const SigninBebeli({super.key});

  @override
  State<SigninBebeli> createState() => _SigninBebeliState();
}

class _SigninBebeliState extends State<SigninBebeli> {
  Timer? _timer;
  final _form = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool valid_form = false;

  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Apakah anda yakin?'),
            content: const Text('Anda ingin keluar dari aplikasi'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text('Tidak'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: const Text('Ya'),
              ),
            ],
          ),
        )) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: SafeArea(
        child: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              isAuthenticated: (token) {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AppRoot(),
                    ),
                    (route) => false);
                UXToast.show(
                    backgroundColor: UXAppColors.green,
                    textColor: UXColors.white,
                    message: 'Login Success');
              },
              unAuthenticated: () => UXToast.show(
                  message: "akun tidak valid",
                  backgroundColor: UXAppColors.danger,
                  textColor: UXColors.white),
              error: (error) {
                // FlashMessage.error(context: context, error: error, message: "");
                UXToast.show(
                    backgroundColor: UXAppColors.danger,
                    textColor: UXColors.white,
                    message: error.messageDescription());
              },
            );
          },
          child: Scaffold(
            resizeToAvoidBottomInset: true,
            backgroundColor: UXColors.grey_20,
            body: Padding(
              padding: const EdgeInsets.all(UXConstants.kFontSizeXL),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                        height: 32,
                        child:
                            Image.asset(Assets.images.bebungeFullColor.path)),
                  ),
                  Align(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: UXConstants.kPaddingM),
                        const Text('Masuk Aplikasi',
                            style: TextStyle(
                                fontSize: UXConstants.kFontSizeL,
                                fontWeight: FontWeight.w700)),
                        const SizedBox(
                          width: 239,
                          height: 36,
                          child: Text(
                            "Masukkan nama pengguna & kata sandi dengan benar",
                            style: TextStyle(
                                fontSize: UXConstants.kFontSizeM,
                                fontWeight: FontWeight.w300),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        form(context),
                        signInButton(
                          context,
                          onPressed: () {
                            if (_emailController.text.isEmpty) {
                              UXToast.show(
                                  message: 'email belum terisi',
                                  backgroundColor: UXAppColors.danger,
                                  textColor: UXColors.white);
                            }
                            if (_passwordController.text.isEmpty) {
                              UXToast.show(
                                  message: 'password belum terisi',
                                  backgroundColor: UXAppColors.danger,
                                  textColor: UXColors.white);
                            }
                            BlocProvider.of<AuthBloc>(context)
                              ..add(AuthEvent.userLogin(
                                  email: _emailController.text,
                                  password: _passwordController.text));
                            hideKeyboard(context);
                          },
                        ),
                        // alredyHaveAcccount(context),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Form form(BuildContext context) {
    return Form(
      key: _form,
      child: Column(
        children: [
          const SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                LocaleKeys.auth_form_form_title_username.tr(),
                style: const TextStyle(
                  fontSize: UXConstants.kFontSizeM,
                  fontWeight: FontWeight.w400,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 4),
              UXInputCustom(
                autoValidMode: AutovalidateMode.onUserInteraction,
                labelText: LocaleKeys.auth_form_form_hint_title_username.tr(),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                controller: _emailController,
                validator: (p0) =>
                    p0!.isEmpty ? "Nama Pengguna belum diisi" : null,
                textInputAction: TextInputAction.next,
                onChanged: (value) {
                  validasiForm();
                },
              ),
            ],
          ),
          const SizedBox(
            height: UXConstants.kPaddingL,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                LocaleKeys.auth_form_form_title_password.tr(),
                style: const TextStyle(
                  fontSize: UXConstants.kFontSizeM,
                  fontWeight: FontWeight.w400,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 4),
              UXInputCustom(
                autoValidMode: AutovalidateMode.onUserInteraction,
                labelText: LocaleKeys.auth_form_form_hint_title_username.tr(),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                // prefixIcon: Icons.password_rounded,
                controller: _passwordController,
                // errorText: _error.message("password"),
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                validator: (p0) =>
                    p0!.isEmpty ? "Kata sandi belum diisi" : null,
                onChanged: (value) {
                  validasiForm();
                },
              ),
            ],
          ),
          SizedBox(
            height: expandedSize(context) -
                (Theme.of(context).textTheme.bodyMedium?.fontSize ?? 0),
          ),
        ],
      ),
    );
  }

  void validasiForm() {
    if (_emailController.text.isNotEmpty) {
      if (_passwordController.text.isNotEmpty) {
        setState(() {
          valid_form = true;
        });
      } else {
        setState(() {
          valid_form = false;
        });
      }
    } else {
      setState(() {
        valid_form = false;
      });
    }
  }

  // Widget alredyHaveAcccount(BuildContext context) {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     crossAxisAlignment: CrossAxisAlignment.center,
  //     children: [
  //       Text(
  //         LocaleKeys.already_have_an_account,
  //         style: TextStyle(
  //             fontSize: UXConstants.kFontSizeM, fontWeight: FontWeight.w400),
  //       ),
  //       TextButton(
  //         onPressed: () => Navigator.push(
  //             context,
  //             MaterialPageRoute(
  //               builder: (context) => PilihRegistrasi(),
  //             )),
  //         child: Text(
  //           LocaleKeys.register,
  //           style: TextStyle(
  //               fontSize: UXConstants.kFontSizeM, color: UXAppColors.biru1),
  //         ),
  //       )
  //     ],
  //   );
  // }

  UXButton signInButton(BuildContext context, {Function()? onPressed}) {
    return UXButton(
      onPressed: onPressed,
      title: LocaleKeys.auth_form_submit_signin.tr(),
      height: Theme.of(context).buttonTheme.height,
      backgroundColor: UXAppColors.primary,
      enabled: valid_form,
    );
  }
}
