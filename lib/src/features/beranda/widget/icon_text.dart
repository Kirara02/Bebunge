import 'package:flutter/material.dart';

import '../../../config/ux_constants.dart';
import '../../../widgets/icon/icon_box.dart';

class IconText extends StatelessWidget {
  const IconText(
      {this.title,
      this.fontSize,
      this.color,
      this.elevation,
      this.icon,
      this.iconSize,
      this.onPressed,
      this.shape,
      this.fontWeight,
      this.buttonSize,
      super.key});
  final String? title;
  final double? fontSize;
  final FontWeight? fontWeight;
  final ShapeBorder? shape;
  final Widget? icon;
  final Color? color;
  final double? elevation;
  final double? iconSize;
  final double? buttonSize;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconBox(
            child: icon,
            color: color,
            elevation: elevation,
            shape: shape,
            onPressed: onPressed,
            size: buttonSize),
        SizedBox(height: UXConstants.kPaddingXS),
        SizedBox(
          width: 75,
          child: Text(
            title ?? '',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
