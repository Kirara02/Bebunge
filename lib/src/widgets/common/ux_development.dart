import 'package:bebunge/src/config/ux_constants.dart';
import 'package:bebunge/src/widgets/common/ux_spacer.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../gen/assets.gen.dart';

class UXDevelopment extends StatelessWidget {
  const UXDevelopment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          LottieBuilder.asset(
            Assets.lottie.underContruction.path,
            width: 320,
            height: 320,
          ),
          Text('Maaf',
              style: TextStyle(
                  fontSize: UXConstants.kFontSizeL,
                  fontWeight: FontWeight.w600)),
          UXSpacer(
            height: 8,
          ),
          Text('Fitur dalam pengembangan',
              style: TextStyle(
                  fontSize: UXConstants.kFontSizeL,
                  fontWeight: FontWeight.w400))
        ],
      )),
    );
  }
}
