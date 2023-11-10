import 'dart:async';

import 'package:bebunge/gen/assets.gen.dart';
import 'package:bebunge/l10n/locale_keys.g.dart';
import 'package:bebunge/src/config/theme/colors.dart';
import 'package:bebunge/src/config/ux_constants.dart';
import 'package:bebunge/src/features/darurat_beranda/view/darurat_beranda.dart';
import 'package:bebunge/src/widgets/common/ux_spacer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class DaruratPage extends StatefulWidget {
  const DaruratPage({super.key});

  @override
  State<DaruratPage> createState() => _DaruratPageState();
}

class _DaruratPageState extends State<DaruratPage> {
  bool _isLongPress = false;
  final Duration _longPressDuration = Duration(seconds: 3);
  late DateTime _longPressStart;

  Timer? timer;

  // void _onLongPressStart(LongPressStartDetails details) {
  //   _longPressStart = DateTime.now();
  //   setState(() {
  //     _isLongPress = true;
  //   });
  // }

  // void _onLongPressEnd(LongPressEndDetails details) {
  //   setState(() {
  //     _isLongPress = false;
  //   });
  //   final longPressDuration = DateTime.now().difference(_longPressStart);
  //   if (longPressDuration >= _longPressDuration) {
  //     Logger().e('tesd');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(LocaleKeys.emergency_emergency_button.tr(),
            style: TextStyle(
                fontSize: UXConstants.kFontSizeXL,
                fontWeight: FontWeight.w700)),
        backgroundColor: UXAppColors.primary,
        foregroundColor: UXColors.white,
        bottom: PreferredSize(
            child: SizedBox(), preferredSize: Size.fromHeight(10)),
        shape: ContinuousRectangleBorder(
            borderRadius: BorderRadiusDirectional.only(
                bottomStart: Radius.circular(25),
                bottomEnd: Radius.circular(25))),
      ),
      body: Material(
        color: UXAppColors.red,
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onLongPressEnd: (details) {
            timer?.cancel();
          },
          onLongPress: () {
            timer = Timer.periodic(Duration(milliseconds: 3000), (timer) {
              timer.cancel();
              pushDynamicScreen(context,
                  screen: PageTransition(
                      child: DaruratBeranda(), type: PageTransitionType.fade));
            });
          },
          child: InkWell(
            splashColor: UXColors.white,
            onTap: () {},
            child: Container(
                decoration: BoxDecoration(),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          height: 214,
                          width: 214,
                          padding: EdgeInsetsDirectional.all(30),
                          decoration: BoxDecoration(
                              color: UXColors.white,
                              borderRadius:
                                  BorderRadiusDirectional.circular(107)),
                          child: SvgPicture.asset(
                            Assets.svgs.lightPanic.path,
                            fit: BoxFit.contain,
                            width: 151,
                            height: 138,
                          )),
                      UXSpacer(
                        height: 24,
                      ),
                      Text(
                        LocaleKeys.emergency_emergency_text.tr(),
                        maxLines: 2,
                        style: TextStyle(
                            color: UXColors.white,
                            fontSize: UXConstants.kFontSizeM,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
