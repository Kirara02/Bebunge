import 'package:bebunge/src/features/onboard.dart/view/onboard_page.dart';
import 'package:bebunge/src/widgets/common/ux_spacer.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../gen/assets.gen.dart';
import '../../../app/app_root.dart';
import '../../../config/theme/colors.dart';
import '../../../config/ux_constants.dart';
import '../../../widgets/common/gradient_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  PackageInfo packageInfo = PackageInfo(
    appName: 'Unknown',
    packageName: 'Unknown',
    version: 'Unknown',
    buildNumber: 'Unknown',
    buildSignature: 'Unknown',
    installerStore: 'Unknown',
  );

  Future<void> initPackageInfo() async {
    final info = await PackageInfo.fromPlatform();
    setState(() {
      packageInfo = info;
    });
  }

  pageForward() async {
    var pref = await SharedPreferences.getInstance();
    bool? onboard = pref.getBool('onboard');
    Future.delayed(
      Duration(milliseconds: 2000),
      () {
        if (onboard == null || onboard == true) {
          pref.setBool('onboard', false);
          Navigator.pushAndRemoveUntil(
              context,
              PageTransition(
                  child: OnboardPage(), type: PageTransitionType.leftToRight),
              (route) => false);
        } else {
          Navigator.pushAndRemoveUntil(
              context,
              PageTransition(
                  child: AppRoot(), type: PageTransitionType.leftToRight),
              (route) => false);
        }

        // context.read<AuthBloc>().add(AuthEvent.checkStatus());
      },
    );
  }

  @override
  void initState() {
    initPackageInfo();
    pageForward();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UXColors.white,
      body: Stack(children: [
        Align(
          alignment: Alignment.center,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(Assets.images.bebungeLogo.path, height: 60),
              UXSpacer(
                width: 4,
              ),
              GradientText(
                'ebunge',
                style: const TextStyle(fontSize: 40),
                gradient: LinearGradient(colors: [
                  UXAppColors.primary,
                  Colors.blue.shade400,
                  Colors.blue.shade600,
                ]),
              ),
              // Text(
              //   'ebunge',
              //   style: TextStyle(fontSize: UXConstants.kFontSizeX),
              // )
            ],
          ),
        ),
        Positioned.fill(
          bottom: 20,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              'Versi Aplikasi ${packageInfo.version}',
              style: TextStyle(
                  fontSize: UXConstants.kFontSizeS,
                  fontWeight: FontWeight.w400),
            ),
          ),
        )
      ]),
    );
  }
}
