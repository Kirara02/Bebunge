import 'package:bebunge/gen/assets.gen.dart';
import 'package:bebunge/src/config/icons.dart';
import 'package:bebunge/src/config/theme/colors.dart';
import 'package:bebunge/src/config/ux_constants.dart';
import 'package:bebunge/src/features/kartu_kuning/booking/view/booking_page.dart';
import 'package:bebunge/src/features/kartu_kuning/formulir/view/kartu_kuning_tahap_1.dart';
import 'package:bebunge/src/features/kartu_kuning/login/view/kartu_kuning_login.dart';
import 'package:bebunge/src/features/kartu_kuning/pengambilan/view/kartu_kuning_page.dart';
import 'package:bebunge/src/widgets/button/button.dart';
import 'package:bebunge/src/widgets/common/preferences.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class KetenagakerjaanDialog extends StatelessWidget {
  final BuildContext context;
  const KetenagakerjaanDialog(this.context, {super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 24,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Pilih Menu",
              style: TextStyle(
                fontSize: UXConstants.kFontSizeL,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            _menu(
              onTap: () => pushDynamicScreen(context,
                  screen: PageTransition(
                      child: Preference().getString('token_kk') == '' ||
                              Preference().getString('token_kk') == null
                          ? KartuKuningLogin()
                          : Preference().getString('status_kk') != 'Pengajuan'
                              ? KartuKuningPage()
                              : BookingPage(),
                      type: PageTransitionType.rightToLeft,
                      duration: Duration(milliseconds: 400),
                      reverseDuration: Duration(milliseconds: 400),
                      curve: Curves.easeInOut),
                  withNavBar: false),
              title: "Kartu Kuning",
              icon: AppIcons.kartuKuning,
            ),
            const SizedBox(
              height: 8,
            ),
            _menu(
              onTap: () {},
              title: "SIP Kerja",
              icon: AppIcons.sipKerja,
            ),
          ],
        ),
      ),
    );
  }

  Widget _menu({
    required VoidCallback onTap,
    required String title,
    required Widget icon,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: UXAppColors.primary.withOpacity(0.16),
        ),
        child: Row(
          children: [
            icon,
            const SizedBox(
              width: 12,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: UXConstants.kFontSizeL,
              ),
            )
          ],
        ),
      ),
    );
  }
}
