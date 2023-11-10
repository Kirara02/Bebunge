// import 'dart:async';

// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';

// import '../../../../gen/assets.gen.dart';
// import '../../../../l10n/locale_keys.g.dart';
// import '../../../config/theme/colors.dart';
// import '../../../config/ux_constants.dart';
// import '../../../utils/dismiss_keyboard.dart';
// import '../../../widgets/button/button.dart';
// import '../../../widgets/common/expand_size.dart';
// import '../../../widgets/forms/ux_input_custom.dart';
// import 'signin.dart';

// class RegisterPage extends StatefulWidget {
//   const RegisterPage({super.key});

//   @override
//   State<RegisterPage> createState() => _RegisterPageState();
// }

// class _RegisterPageState extends State<RegisterPage> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   final _emailController = TextEditingController();
//   final _passwordController = TextEditingController();
//   bool valid_form = false;

//   Future<bool> _onWillPop() async {
//     return (await showDialog(
//           context: context,
//           builder: (context) => AlertDialog(
//             title: const Text('Apakah anda yakin?'),
//             content: const Text('Anda ingin keluar dari aplikasi'),
//             actions: <Widget>[
//               TextButton(
//                 onPressed: () => Navigator.of(context).pop(false),
//                 child: const Text('Tidak'),
//               ),
//               TextButton(
//                 onPressed: () => Navigator.of(context).pop(true),
//                 child: const Text('Ya'),
//               ),
//             ],
//           ),
//         )) ??
//         false;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: _onWillPop,
//       child: SafeArea(
//         child: Scaffold(
//           resizeToAvoidBottomInset: true,
//           backgroundColor: UXColors.grey_20,
//           body: SingleChildScrollView(
//             physics: BouncingScrollPhysics(),
//             child: Padding(
//               padding: const EdgeInsets.all(UXConstants.kFontSizeXL),
//               child: Column(
//                 children: [
//                   Align(
//                     alignment: Alignment.topLeft,
//                     child: SizedBox(
//                         height: 32,
//                         child:
//                             Image.asset(Assets.images.bebungeFullColor.path)),
//                   ),
//                   Positioned(
//                     top: 100,
//                     left: 0,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         const SizedBox(height: UXConstants.kPaddingM),
//                         const Text('Umum - Daftar Aplikasi',
//                             style: TextStyle(
//                                 fontSize: UXConstants.kFontSizeL,
//                                 fontWeight: FontWeight.w700)),
//                         const SizedBox(
//                           width: 239,
//                           height: 36,
//                           child: Text(
//                             "Silakan lengkapi formulir berikut dengan benar",
//                             style: TextStyle(
//                                 fontSize: UXConstants.kFontSizeM,
//                                 fontWeight: FontWeight.w300),
//                             textAlign: TextAlign.left,
//                           ),
//                         ),
//                         const SizedBox(
//                           width: 239,
//                           height: 36,
//                           child: Text(
//                             "Tahap 1 Data Diri",
//                             style: TextStyle(
//                                 color: UXColors.grey_60,
//                                 fontSize: UXConstants.kFontSizeM,
//                                 fontWeight: FontWeight.w300),
//                             textAlign: TextAlign.left,
//                           ),
//                         ),
//                         form(context),
//                         signInButton(context),
//                         alredyHaveAcccount(context)
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Form form(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: Column(
//         children: [
//           const SizedBox(height: UXConstants.kPaddingXL),
//           //ANCHOR - Form : Nama Pengguna
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 LocaleKeys.auth_form_form_hint_title_username.tr(),
//                 style: const TextStyle(
//                   fontSize: UXConstants.kFontSizeM,
//                   fontWeight: FontWeight.w400,
//                   color: Colors.black87,
//                 ),
//               ),
//               const SizedBox(height: 4),
//               UXInputCustom(
//                 autoValidMode: AutovalidateMode.onUserInteraction,
//                 labelText: LocaleKeys.auth_form_form_hint_title_username.tr(),
//                 floatingLabelBehavior: FloatingLabelBehavior.never,
//                 controller: _emailController,
//                 validator: (p0) => p0!.isEmpty
//                     ? "${LocaleKeys.auth_form_form_title_username.tr()}"
//                     : null,
//                 textInputAction: TextInputAction.next,
//                 onChanged: (value) {
//                   validasiForm();
//                 },
//               ),
//             ],
//           ),
//           const SizedBox(
//             height: UXConstants.kPaddingL,
//           ),
//           //ANCHOR - Form : Email
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Text(
//               //   LocaleKeys.field_email,
//               //   style: const TextStyle(
//               //     fontSize: UXConstants.kFontSizeM,
//               //     fontWeight: FontWeight.w400,
//               //     color: Colors.black87,
//               //   ),
//               // ),
//               const SizedBox(height: 4),
//               UXInputCustom(
//                 autoValidMode: AutovalidateMode.onUserInteraction,
//                 labelText: LocaleKeys.field_email,
//                 floatingLabelBehavior: FloatingLabelBehavior.never,
//                 // prefixIcon: Icons.password_rounded,
//                 controller: _passwordController,
//                 // errorText: _error.message("password"),
//                 keyboardType: TextInputType.emailAddress,
//                 validator: (p0) => p0!.isEmpty
//                     ? "${LocaleKeys.field_email} ${LocaleKeys.validator_form}"
//                     : null,
//                 onChanged: (value) {
//                   validasiForm();
//                 },
//               ),
//             ],
//           ),
//           const SizedBox(
//             height: UXConstants.kPaddingL,
//           ),
//           //ANCHOR - Form : NIK
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 LocaleKeys.field_nik,
//                 style: const TextStyle(
//                   fontSize: UXConstants.kFontSizeM,
//                   fontWeight: FontWeight.w400,
//                   color: Colors.black87,
//                 ),
//               ),
//               const SizedBox(height: 4),
//               UXInputCustom(
//                 autoValidMode: AutovalidateMode.onUserInteraction,
//                 labelText: LocaleKeys.field_nik,
//                 floatingLabelBehavior: FloatingLabelBehavior.never,
//                 // prefixIcon: Icons.password_rounded,
//                 controller: _passwordController,
//                 // errorText: _error.message("password"),
//                 keyboardType: TextInputType.number,
//                 validator: (p0) => p0!.isEmpty
//                     ? "${LocaleKeys.field_nik} ${LocaleKeys.validator_form}"
//                     : null,
//                 onChanged: (value) {
//                   validasiForm();
//                 },
//               ),
//             ],
//           ),
//           const SizedBox(
//             height: UXConstants.kPaddingL,
//           ),
//           //ANCHOR - Form : Kata Sandi
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 LocaleKeys.field_password,
//                 style: const TextStyle(
//                   fontSize: UXConstants.kFontSizeM,
//                   fontWeight: FontWeight.w400,
//                   color: Colors.black87,
//                 ),
//               ),
//               const SizedBox(height: 4),
//               UXInputCustom(
//                 autoValidMode: AutovalidateMode.onUserInteraction,
//                 labelText: LocaleKeys.field_password,
//                 floatingLabelBehavior: FloatingLabelBehavior.never,
//                 // prefixIcon: Icons.password_rounded,
//                 controller: _passwordController,
//                 // errorText: _error.message("password"),
//                 keyboardType: TextInputType.text,
//                 obscureText: true,
//                 validator: (p0) => p0!.isEmpty
//                     ? "${LocaleKeys.field_password} ${LocaleKeys.validator_form}"
//                     : null,
//                 onChanged: (value) {
//                   validasiForm();
//                 },
//               ),
//             ],
//           ),
//           const SizedBox(
//             height: UXConstants.kPaddingL,
//           ),
//           //ANCHOR - Form : Ulangi Password
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 LocaleKeys.field_repeatPassword,
//                 style: const TextStyle(
//                   fontSize: UXConstants.kFontSizeM,
//                   fontWeight: FontWeight.w400,
//                   color: Colors.black87,
//                 ),
//               ),
//               const SizedBox(height: 4),
//               UXInputCustom(
//                 autoValidMode: AutovalidateMode.onUserInteraction,
//                 labelText: LocaleKeys.field_repeatPassword,
//                 floatingLabelBehavior: FloatingLabelBehavior.never,
//                 // prefixIcon: Icons.password_rounded,
//                 controller: _passwordController,
//                 // errorText: _error.message("password"),
//                 obscureText: true,
//                 keyboardType: TextInputType.text,
//                 validator: (p0) => p0!.isEmpty
//                     ? "${LocaleKeys.field_nik} ${LocaleKeys.validator_form}"
//                     : null,
//                 onChanged: (value) {
//                   validasiForm();
//                 },
//               ),
//             ],
//           ),
//           SizedBox(
//             height: expandedSize(context) -
//                 (Theme.of(context).textTheme.bodyMedium?.fontSize ?? 0),
//           ),
//         ],
//       ),
//     );
//   }

//   void validasiForm() {
//     if (_emailController.text.isNotEmpty) {
//       if (_passwordController.text.isNotEmpty) {
//         setState(() {
//           valid_form = true;
//         });
//       } else {
//         setState(() {
//           valid_form = false;
//         });
//       }
//     } else {
//       setState(() {
//         valid_form = false;
//       });
//     }
//   }

//   Widget alredyHaveAcccount(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Text(
//           'Sudah punya Akun?',
//           style: TextStyle(
//               fontSize: UXConstants.kFontSizeM, fontWeight: FontWeight.w400),
//         ),
//         TextButton(
//           onPressed: () {
//             Navigator.pushAndRemoveUntil(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => SigninPage(),
//                 ),
//                 (route) => false);
//           },
//           child: Text(
//             'Masuk',
//             style: TextStyle(
//                 fontSize: UXConstants.kFontSizeM, color: UXAppColors.biru1),
//           ),
//         )
//       ],
//     );
//   }

//   UXButton signInButton(BuildContext context) {
//     return UXButton(
//       onPressed: () {
//         // Map<String, dynamic> params = {
//         //   "code": _emailController.text,
//         //   "password": _passwordController.text
//         // };
//         // BlocProvider.of<UserAuthBloc>(context)
//         //     .add(UserAuthEvent.signIn(params));
//         // setState(() {
//         //   _emailController.clear();
//         //   _passwordController.clear();
//         // });
//         hideKeyboard(context);
//       },
//       title: "Masuk",
//       height: Theme.of(context).buttonTheme.height,
//       backgroundColor: UXAppColors.primary,
//       enabled: valid_form,
//     );
//   }
// }
