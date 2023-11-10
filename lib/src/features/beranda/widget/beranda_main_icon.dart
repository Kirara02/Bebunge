import 'package:bebunge/gen/assets.gen.dart';
import 'package:bebunge/src/config/icons.dart';
import 'package:bebunge/src/features/beranda/widget/icon_with_text.dart';
import 'package:bebunge/src/features/boss/view/boss_page.dart';
import 'package:bebunge/src/features/ipbb/view/ipbb.dart';
import 'package:bebunge/src/features/kartu_kuning/formulir/view/kartu_kuning_tahap_1.dart';
import 'package:bebunge/src/features/kartu_kuning/login/view/kartu_kuning_login.dart';
import 'package:bebunge/src/features/kartu_kuning/pengambilan/view/kartu_kuning_page.dart';
import 'package:bebunge/src/features/kartu_kuning/pengambilan/view/kartu_kuning_pengambilan.dart';
import 'package:bebunge/src/features/ppdb/view/ppdb_page.dart';
import 'package:bebunge/src/widgets/common/preferences.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import '../../../config/theme/colors.dart';
import '../../../config/ux_constants.dart';
import '../../bebeli/view/bebeli.dart';
import '../../harga_pasar/view/harga_pasar.dart';
import '../../kependudukan/view/kependudukan.dart';
import '../../lapor/view/lapor.dart';
import 'ketenagakerjaan_dialog.dart';

class BerandaMainIcon extends StatefulWidget {
  const BerandaMainIcon({super.key});

  @override
  State<BerandaMainIcon> createState() => _BerandaMainIconState();
}

class _BerandaMainIconState extends State<BerandaMainIcon> {
  _ketenagakerjaanDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return KetenagakerjaanDialog(context);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final prefs = Preference.load();

    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.only(
          left: UXConstants.kPaddingXL,
          right: UXConstants.kPaddingXL,
          top: UXConstants.kPaddingXL),
      crossAxisCount: 4,
      children: [
        IconWithText(
          'Ketenagakerjaan',
          textSize: UXConstants.kFontSizeS,
          Positioned(bottom: -10, right: -10, child: AppIcons.ketenagakerjaan),
          iconSize: 48,
          iconRadius: BorderRadius.circular(10),
          iconBackground: UXAppColors.gojekYellow,
          onTap: () => _ketenagakerjaanDialog(context),
        ),
        IconWithText(
          'Sitepak',
          textSize: UXConstants.kFontSizeS,
          Positioned(bottom: -7, right: -7, child: AppIcons.kependudukan),
          iconSize: 48,
          iconRadius: BorderRadius.circular(10),
          iconBackground: UXAppColors.gojekGreen,
          onTap: () {
            pushDynamicScreen(context,
                screen: PageTransition(
                  child: Kependudukan(),
                  type: PageTransitionType.rightToLeft,
                  curve: Curves.easeInOut,
                  duration: Duration(milliseconds: 500),
                  reverseDuration: Duration(milliseconds: 500),
                ),
                withNavBar: false);
          },
        ),
        IconWithText(
          'Bebeli',
          textSize: UXConstants.kFontSizeS,
          Positioned(bottom: -10, right: -10, child: AppIcons.bebeli),
          iconSize: 48,
          iconRadius: BorderRadius.circular(10),
          iconBackground: UXAppColors.gojekGreen,
          onTap: () {
            pushDynamicScreen(context,
                screen: PageTransition(
                  child: Bebeli(),
                  type: PageTransitionType.rightToLeft,
                  duration: Duration(milliseconds: 400),
                  reverseDuration: Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                ),
                withNavBar: false);
          },
        ),
        IconWithText(
          'PPDB',
          textSize: UXConstants.kFontSizeS,
          Positioned(bottom: -8, right: -8, child: AppIcons.ppdb),
          iconSize: 48,
          iconRadius: BorderRadius.circular(10),
          iconBackground: UXAppColors.gojekBlue,
          onTap: () {
            pushDynamicScreen(context,
                screen: PageTransition(
                    child: PpdbPage(),
                    type: PageTransitionType.rightToLeft,
                    duration: Duration(milliseconds: 400),
                    reverseDuration: Duration(milliseconds: 400),
                    curve: Curves.easeInOut),
                withNavBar: false);
          },
        ),
        IconWithText(
          'Sp4n Lapor',
          textSize: UXConstants.kFontSizeS,
          Positioned(bottom: -10, right: -10, child: AppIcons.span_lapor),
          iconSize: 48,
          iconRadius: BorderRadius.circular(10),
          iconBackground: UXAppColors.gojekRed,
          onTap: () {
            pushDynamicScreen(context,
                screen: PageTransition(
                    child: Lapor(),
                    type: PageTransitionType.rightToLeft,
                    duration: Duration(milliseconds: 500),
                    reverseDuration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut),
                withNavBar: false);
          },
        ),

        IconWithText(
          'Harga Bahan',
          textSize: UXConstants.kFontSizeS,
          Positioned(bottom: -8, right: -8, child: AppIcons.harga_bahan),
          iconSize: 48,
          iconRadius: BorderRadius.circular(10),
          iconBackground: UXAppColors.gojekBlue,
          onTap: () {
            pushDynamicScreen(context,
                screen: PageTransition(
                    child: HargaPasar(),
                    type: PageTransitionType.rightToLeft,
                    duration: Duration(milliseconds: 400),
                    reverseDuration: Duration(milliseconds: 400),
                    curve: Curves.easeInOut),
                withNavBar: false);
          },
        ),
        IconWithText(
          'BOSS',
          textSize: UXConstants.kFontSizeS,
          Positioned(bottom: -8, right: -8, child: AppIcons.boss),
          iconSize: 48,
          iconRadius: BorderRadius.circular(10),
          iconBackground: UXAppColors.gojekBlue,
          onTap: () {
            pushDynamicScreen(context,
                screen: PageTransition(
                    child: BossPage(),
                    type: PageTransitionType.rightToLeft,
                    duration: Duration(milliseconds: 400),
                    reverseDuration: Duration(milliseconds: 400),
                    curve: Curves.easeInOut),
                withNavBar: false);
          },
        ),
        // IconWithText(
        //   'Kesehatan',
        //   textSize: UXConstants.kFontSizeS,
        //   Positioned(
        //       bottom: -7,
        //       right: -7,
        //       child: Image.asset(Assets.images.kesehatan.path,
        //           height: 42, width: 42)),
        //   iconSize: 48,
        //   iconRadius: BorderRadius.circular(10),
        //   iconBackground: UXAppColors.gojekRed,
        //   onTap: () {
        //     pushDynamicScreen(context,
        //         screen: PageTransition(
        //             child: Kesehatan(),
        //             type: PageTransitionType.rightToLeft,
        //             duration: Duration(milliseconds: 400),
        //             reverseDuration: Duration(milliseconds: 400),
        //             curve: Curves.easeInOut),
        //         withNavBar: false);
        //   },
        // ),
        // IconWithText(
        //   'Transportasi',
        //   textSize: UXConstants.kFontSizeS,
        //   Positioned(
        //       bottom: -7,
        //       right: -7,
        //       child: Image.asset(Assets.images.transportasi.path,
        //           height: 44, width: 44)),
        //   iconSize: 48,
        //   iconRadius: BorderRadius.circular(10),
        //   iconBackground: UXAppColors.gojekBlue,
        //   onTap: () {
        //     pushDynamicScreen(context,
        //         screen: PageTransition(
        //             child: Transportasi(),
        //             type: PageTransitionType.rightToLeft,
        //             duration: Duration(milliseconds: 400),
        //             reverseDuration: Duration(milliseconds: 400),
        //             curve: Curves.easeInOut),
        //         withNavBar: false);
        //   },
        // ),
        IconWithText(
          'IPBB',
          textSize: UXConstants.kFontSizeS,
          Positioned(bottom: -10, right: -10, child: AppIcons.ipbb),
          iconSize: 48,
          iconRadius: BorderRadius.circular(10),
          iconBackground: UXAppColors.gojekYellow,
          onTap: () {
            pushDynamicScreen(context,
                screen: PageTransition(
                    child: IpbbPage(),
                    type: PageTransitionType.rightToLeft,
                    duration: Duration(milliseconds: 400),
                    reverseDuration: Duration(milliseconds: 400),
                    curve: Curves.easeInOut),
                withNavBar: false);
          },
        ),

        // IconWithText(
        //   'Lainnya',
        //   textSize: UXConstants.kFontSizeS,
        //   Positioned(bottom: -7, right: -7, child: AppIcons.lainnya),
        //   iconSize: 48,
        //   iconRadius: BorderRadius.circular(10),
        //   iconBackground: Color.fromARGB(255, 255, 239, 204),
        //   onTap: () {
        // Navigator.push(
        //     context,
        //     PageTransition(
        //         child: Transportasi(),
        //         type: PageTransitionType.rightToLeft,
        //         duration: Duration(milliseconds: 500),
        //         reverseDuration: Duration(milliseconds: 500),
        //         curve: Curves.easeInOut));
        //   },
        // ),
        SizedBox()
      ],
    );
  }
}
