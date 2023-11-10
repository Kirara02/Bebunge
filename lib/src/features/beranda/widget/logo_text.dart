import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../config/theme/colors.dart';
import '../../../config/ux_constants.dart';

class LogoText extends StatelessWidget {
  const LogoText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          Assets.images.bebungeLogoWhite.path,
          width: UXConstants.kIconsXL,
          height: UXConstants.kIconsXL,
        ),
        SizedBox(
          height: 48,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Bebunge',
                  style: TextStyle(
                      fontSize: UXConstants.kFontSizeL,
                      fontWeight: FontWeight.w700,
                      color: UXColors.white)),
              Text('Bekasi nyambung bae',
                  style: TextStyle(
                      fontSize: UXConstants.kFontSizeM,
                      fontWeight: FontWeight.w400,
                      color: UXColors.white))
            ],
          ),
        )
      ],
    );
  }
}
