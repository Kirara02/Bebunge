import 'package:bebunge/src/widgets/icon/ux_icon.dart';
import 'package:flutter/material.dart';

import '../../../config/ux_constants.dart';

class IconWithText extends StatelessWidget {
  const IconWithText(this.text, this.icon,
      {this.textSize,
      this.textWeight,
      this.iconSize,
      this.iconPadding,
      this.iconRadius,
      this.iconBackground,
      this.onTap,
      super.key});
  final String text;
  final double? textSize;
  final FontWeight? textWeight;
  final Widget? icon;
  final EdgeInsetsGeometry? iconPadding;
  final double? iconSize;
  final VoidCallback? onTap;
  final BorderRadiusGeometry? iconRadius;
  final Color? iconBackground;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          UXIcon(
              icon: icon,
              padding: iconPadding,
              size: iconSize,
              iconRadius: iconRadius,
              iconBackground: iconBackground),
          SizedBox(height: UXConstants.kPaddingS),
          SizedBox(
            width: 75,
            child: Text(
              text,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: textSize, fontWeight: textWeight),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
