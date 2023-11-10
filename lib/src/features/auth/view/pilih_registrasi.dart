// import 'package:flutter/material.dart';

// import '../../../../gen/assets.gen.dart';
// import '../../../config/theme/colors.dart';
// import '../../../config/ux_constants.dart';
// import '../../../widgets/dialogs/ux_toast_wrapper.dart';
// import '../../../widgets/icon/icon_box.dart';
// import 'register.dart';

// class PilihRegistrasi extends StatefulWidget {
//   const PilihRegistrasi({super.key});

//   @override
//   State<PilihRegistrasi> createState() => _PilihRegistrasiState();
// }

// class _PilihRegistrasiState extends State<PilihRegistrasi> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Padding(
//       padding: const EdgeInsets.all(UXConstants.kPaddingXL),
//       child: Column(
//         children: [
//           SizedBox(height: 30),
//           Align(
//             alignment: Alignment.centerLeft,
//             child: SizedBox(
//                 height: 32,
//                 child: Image.asset(Assets.images.bebungeFullColor.path)),
//           ),
//           Flexible(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Flexible(
//                   child: Text(
//                     "Daftar Aplikasi",
//                     style: TextStyle(
//                         fontSize: UXConstants.kFontSizeL,
//                         fontWeight: FontWeight.w700),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 4,
//                 ),
//                 Flexible(
//                   child: Text(
//                     'Untuk lanjut mendaftar, silahkan pilih siapa Anda',
//                     style: TextStyle(fontSize: UXConstants.kFontSizeM),
//                   ),
//                 ),
//                 SizedBox(
//                   height: UXConstants.kPaddingM,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Column(
//                       children: [
//                         //ANCHOR - Icon APBD
//                         IconBox(
//                           onPressed: () {
//                             UXToast.show(
//                                 message: "Fitur dalam pengembangan",
//                                 backgroundColor: UXAppColors.danger,
//                                 textColor: UXColors.white);
//                           },
//                           color: UXAppColors.yellow,
//                           child: Image.asset(
//                             Assets.images.briefcase.path,
//                             width: UXConstants.kIconsM,
//                             height: UXConstants.kIconsM,
//                           ),
//                         ),
//                         SizedBox(height: 4),
//                         Text('APDB',
//                             style: TextStyle(
//                                 fontSize: UXConstants.kFontSizeM,
//                                 fontWeight: FontWeight.w700))
//                       ],
//                     ),
//                     Column(
//                       children: [
//                         //ANCHOR - Icon Umum
//                         IconBox(
//                           onPressed: () => Navigator.pushReplacement(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => RegisterPage(),
//                               )),
//                           color: UXAppColors.deepGreen,
//                           child: Image.asset(
//                             Assets.images.people.path,
//                             width: UXConstants.kIconsM,
//                             height: UXConstants.kIconsM,
//                           ),
//                         ),
//                         SizedBox(height: 4),
//                         Text('Umum',
//                             style: TextStyle(
//                                 fontSize: UXConstants.kFontSizeM,
//                                 fontWeight: FontWeight.w700))
//                       ],
//                     ),
//                     Column(
//                       children: [
//                         //ANCHOR - Icon Pedagang
//                         IconBox(
//                           onPressed: () {
//                             UXToast.show(
//                                 message: "Fitur dalam pengembangan",
//                                 backgroundColor: UXAppColors.danger,
//                                 textColor: UXColors.white);
//                           },
//                           color: UXAppColors.biru1,
//                           child: Image.asset(
//                             Assets.images.toko.path,
//                             width: UXConstants.kIconsM,
//                             height: UXConstants.kIconsM,
//                           ),
//                         ),
//                         SizedBox(height: 4),
//                         Text('Pedagang',
//                             style: TextStyle(
//                                 fontSize: UXConstants.kFontSizeM,
//                                 fontWeight: FontWeight.w700))
//                       ],
//                     )
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ],
//       ),
//     ));
//   }
// }
