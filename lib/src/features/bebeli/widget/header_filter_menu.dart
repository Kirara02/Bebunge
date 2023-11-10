import 'package:flutter/material.dart';

import '../../../config/theme/colors.dart';
import '../../../config/ux_constants.dart';

class HeaderFilterMenu extends StatelessWidget {
  const HeaderFilterMenu(
      {this.headerTile = '',
      this.moreView = 'Lihat Semua',
      this.onTap,
      super.key});
  final VoidCallback? onTap;
  final String headerTile;
  final String moreView;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          headerTile,
          style: TextStyle(
              fontSize: UXConstants.kFontSizeM, fontWeight: FontWeight.w600),
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            moreView,
            style: TextStyle(
                fontSize: UXConstants.kFontSizeM,
                color: UXAppColors.primary,
                fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }
}
