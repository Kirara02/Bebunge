import 'package:bebunge/l10n/locale_keys.g.dart';
import 'package:bebunge/src/features/about_page/view/tentang_geografis.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import '../../../config/theme/colors.dart';
import '../../../config/ux_constants.dart';
import '../../../widgets/wrapper/custom_wrapper.dart';
import '../../about_page/view/tentang_kependudukan.dart';
import '../../about_page/view/tentang_sejarah.dart';

class BerandaAboutMenu extends StatelessWidget {
  const BerandaAboutMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomWrapper(
      name: LocaleKeys.about_bekasi_title.tr(),
      titleSize: 12,
      child: Container(
        height: 40,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: buttonMenu(
                context,
                buttonTitle: LocaleKeys.about_bekasi_history.tr(),
                onTap: () {
                  pushDynamicScreen(context,
                      screen: PageTransition(
                          child: TentangSejarah(),
                          type: PageTransitionType.rightToLeft),
                      withNavBar: false);
                },
              ),
            ),
            SizedBox(width: UXConstants.kPaddingM),
            Expanded(
              child: buttonMenu(
                context,
                buttonTitle: LocaleKeys.about_bekasi_population.tr(),
                onTap: () {
                  pushDynamicScreen(context,
                      screen: PageTransition(
                          child: TentangKependudukan(),
                          type: PageTransitionType.rightToLeft),
                      withNavBar: false);
                },
              ),
            ),
            SizedBox(width: UXConstants.kPaddingM),
            Expanded(
              child: buttonMenu(
                context,
                buttonTitle: LocaleKeys.about_bekasi_geographical.tr(),
                onTap: () {
                  pushDynamicScreen(context,
                      screen: PageTransition(
                          child: TentangGeografis(),
                          type: PageTransitionType.rightToLeft),
                      withNavBar: false);
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buttonMenu(BuildContext context,
      {String? buttonTitle, VoidCallback? onTap}) {
    return Material(
      child: InkWell(
          onTap: onTap,
          splashColor: UXAppColors.primaryColors.withAlpha(100),
          child: Container(
            alignment: Alignment.center,
            padding:
                EdgeInsetsDirectional.symmetric(horizontal: 2, vertical: 2),
            height: 35,
            decoration: BoxDecoration(
                border: Border.all(color: UXAppColors.biru2),
                borderRadius: BorderRadiusDirectional.circular(5)),
            child: Text(
              buttonTitle ?? "",
              style: TextStyle(
                  fontSize: UXConstants.kFontSizeS,
                  fontWeight: FontWeight.w700,
                  color: UXAppColors.biru2),
            ),
          )),
    );
  }
}
