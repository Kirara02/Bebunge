import 'package:bebunge/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../config/theme/colors.dart';
import '../../../config/ux_constants.dart';

class AngkotPage extends StatefulWidget {
  const AngkotPage({super.key});

  @override
  State<AngkotPage> createState() => _AngkotPageState();
}

class _AngkotPageState extends State<AngkotPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      centerTitle: true,
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
              width: UXConstants.kIconsM,
              child: SvgPicture.asset(
                Assets.svgs.train.path,
                theme: SvgTheme(currentColor: Color.fromARGB(255, 0, 116, 174)),
              )),
          SizedBox(width: UXConstants.kPaddingXS),
          Text(
            'Transportasi',
            style: TextStyle(
                fontSize: UXConstants.kFontSizeXL,
                fontWeight: FontWeight.w700,
                color: UXAppColors.biru1),
          )
        ],
      ),
    ));
  }
}
