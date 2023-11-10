import 'package:bebunge/src/config/ux_constants.dart';
import 'package:bebunge/src/widgets/common/ux_spacer.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../gen/assets.gen.dart';

class UXLoading extends StatelessWidget {
  const UXLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          LottieBuilder.asset(
            Assets.lottie.liquidLoading.path,
            width: 140,
            height: 140,
          ),
          Text('Mohon Tunggu',
              style: TextStyle(
                  fontSize: UXConstants.kFontSizeL,
                  fontWeight: FontWeight.w600)),
          UXSpacer(
            height: 8,
          ),
          Text('Sedang menyiapkan data...',
              style: TextStyle(
                  fontSize: UXConstants.kFontSizeM,
                  fontWeight: FontWeight.w400))
        ],
      )),
    );
  }
}
