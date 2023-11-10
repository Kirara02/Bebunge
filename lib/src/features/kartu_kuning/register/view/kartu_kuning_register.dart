// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:bebunge/src/features/kartu_kuning/register/bloc/register_kk_bloc.dart';
import 'package:bebunge/src/utils/dismiss_keyboard.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../../../l10n/locale_keys.g.dart';
import '../../../../config/theme/colors.dart';
import '../../../../config/ux_constants.dart';
import '../../../../widgets/button/button.dart';
import '../../../../widgets/dialogs/ux_toast_wrapper.dart';
import '../../widget/kartu_kuning_form.dart';

class KartuKuningRegister extends StatefulWidget {
  const KartuKuningRegister({Key? key}) : super(key: key);

  @override
  State<KartuKuningRegister> createState() => _KartuKuningRegisterState();
}

class _KartuKuningRegisterState extends State<KartuKuningRegister> {
  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController noController = TextEditingController(text: '');
  TextEditingController passController = TextEditingController(text: '');
  TextEditingController confirmController = TextEditingController(text: '');

  late bool loading = false;

  Future<FormData?> sendData() async {
    // if (nameController.text.isEmpty) {
    //   _toast('Nama Belum Diisi');
    //   return null;
    // } else if (emailController.text.isEmpty) {
    //   _toast('Email Belum Diisi');
    //   return null;
    // } else if (noController.text.isEmpty) {
    //   _toast('No HP Belum Diisi');
    //   return null;
    // } else if (passController.text.isEmpty) {
    //   _toast('Password Belum Diisi');
    //   return null;
    // } else if (confirmController.text.isEmpty) {
    //   _toast('Konfirmasi Password Belum Diisi');
    //   return null;
    // }

    FormData formData = FormData.fromMap({
      'name': nameController.text,
      'phone': noController.text,
      'email': emailController.text,
      'password': passController.text,
      'password_confirmation': confirmController.text,
    });

    return formData;
  }

  Future _toast(String? message) {
    return UXToast.show(
        message: message ?? '',
        backgroundColor: UXAppColors.danger,
        textColor: UXColors.white);
  }

  _refresh() {
    nameController.clear();
    noController.clear();
    emailController.clear();
    passController.clear();
    confirmController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterKkBloc(),
      child: Scaffold(
        body: Builder(builder: (context) {
          return BlocListener<RegisterKkBloc, RegisterKkState>(
            listener: (context, state) {
              state.whenOrNull(
                  loading: () => UXToast.show(
                      message: 'Sedang Menggirim Data',
                      backgroundColor: UXAppColors.gojekBlue,
                      textColor: UXAppColors.biru2,
                      toastGravity: ToastGravity.BOTTOM),
                  loaded: (data) {
                    UXToast.show(
                        message: data.data,
                        backgroundColor: UXAppColors.primary,
                        textColor: UXColors.white,
                        toastGravity: ToastGravity.BOTTOM);
                    _refresh();
                    setState(() {
                      loading = true;
                    });
                    Future.delayed(
                      const Duration(seconds: 1),
                      () {
                        setState(() {
                          loading = false;
                        });
                        hideKeyboard(context);
                        Navigator.pop(context);
                      },
                    );
                  },
                  error: (error) {
                    error.maybeWhen(
                      orElse: () {},
                      unprocessableEntity: (reasons) {
                        // String errorMessage = reasons?.message ?? '';
                        List<dynamic> errorMessages = reasons?.errors?.values
                                .map((valueList) =>
                                    valueList.isNotEmpty ? valueList[0] : '')
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
                  });
            },
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      LocaleKeys.yellow_card_register_title.tr(),
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: UXConstants.kFontSizeL,
                      ),
                    ),
                    Text(
                      LocaleKeys.yellow_card_register_subtitle.tr(),
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: UXConstants.kFontSizeL,
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    KartuKuningForm(
                      title: LocaleKeys.yellow_card_title_form_text_name.tr(),
                      decoration: InputDecoration(hintText: 'John Doe'),
                      controller: nameController,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    KartuKuningForm(
                      title: LocaleKeys.yellow_card_title_form_text_email.tr(),
                      controller: emailController,
                      decoration:
                          InputDecoration(hintText: 'johndoe@example.com'),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    KartuKuningForm(
                      title: LocaleKeys.yellow_card_title_form_text_nomor.tr(),
                      controller: noController,
                      decoration: InputDecoration(hintText: '+62...'),
                      keyboardType: TextInputType.phone,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    KartuKuningForm(
                      title:
                          LocaleKeys.yellow_card_title_form_text_password.tr(),
                      controller: passController,
                      obsecureText: true,
                      decoration: InputDecoration(hintText: '********'),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    KartuKuningForm(
                      title: LocaleKeys
                          .yellow_card_title_form_text_confirm_password
                          .tr(),
                      decoration: InputDecoration(hintText: '********'),
                      controller: confirmController,
                      obsecureText: true,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    UXButton(
                      title: LocaleKeys.yellow_card_button_register.tr(),
                      onPressed: () {
                        sendData().then((value) {
                          if (value != null) {
                            context
                                .read<RegisterKkBloc>()
                                .add(RegisterKkEvent.started(params: value));
                          }
                        });
                      },
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            '${LocaleKeys.yellow_card_register_login_text.tr()} '),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            LocaleKeys.yellow_card_button_login.tr(),
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
            ),
          );
        }),
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    noController.dispose();
    passController.dispose();
    confirmController.dispose();
    super.dispose();
  }
}
