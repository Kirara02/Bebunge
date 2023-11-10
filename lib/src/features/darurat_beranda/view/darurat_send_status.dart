import 'package:flutter/material.dart';
import 'package:ripple_wave/ripple_wave.dart';

import '../../../config/theme/colors.dart';
import '../../../config/ux_constants.dart';
import '../../../config/ux_screen.dart';
import '../../../widgets/common/ux_spacer.dart';

class DaruratSendStatus extends StatelessWidget {
  const DaruratSendStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("Tombol Darurat",
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
      body: Container(
        decoration: BoxDecoration(color: UXAppColors.red),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            UXSpacer(
              height: 150,
            ),
            RippleWave(
                childTween: Tween(begin: 0.8, end: 1.0),
                color: UXColors.white,
                child: Text(
                  'SOS',
                  style: TextStyle(
                      fontSize: 64,
                      fontWeight: FontWeight.w700,
                      color: UXAppColors.red),
                )),
            UXSpacer(
              height: 150,
            ),
            Flexible(
              child: Container(
                width: UXScreens.width * 0.65,
                child: Text(
                  'Mohon tunggu, kami sedang mengirim sinyal bantuan',
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  softWrap: true,
                  style: TextStyle(
                      fontSize: UXConstants.kFontSizeM,
                      fontWeight: FontWeight.w600,
                      color: UXColors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
