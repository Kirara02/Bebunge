import 'package:bebunge/src/widgets/common/ux_spacer.dart';
import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../config/ux_constants.dart';
import '../../../widgets/common/gradient_text.dart';

class BebungeHeaderIcon extends StatelessWidget {
  const BebungeHeaderIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(Assets.images.bebungeLogo.path),
        UXSpacer(
          width: 4,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GradientText(
              'Bebunge',
              style: TextStyle(
                  fontSize: UXConstants.kFontSizeL,
                  fontWeight: FontWeight.w700),
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 0, 155, 77),
                Color.fromARGB(255, 0, 152, 223)
              ]),
            ),
            GradientText(
              'Bekasi nyambung bae',
              style: TextStyle(
                  fontSize: UXConstants.kFontSizeM,
                  fontWeight: FontWeight.w400),
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 0, 155, 77),
                Color.fromARGB(255, 0, 152, 223)
              ]),
            )
          ],
        )
      ],
    );
  }
}
