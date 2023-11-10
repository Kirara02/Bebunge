import 'package:flutter/material.dart';

import '../../config/ux_constants.dart';

class IconBox extends StatelessWidget {
  const IconBox(
      {this.shape = const CircleBorder(),
      this.size,
      this.color,
      this.child,
      this.onPressed,
      this.elevation,
      this.padding,
      this.shrinkWrap,
      super.key});
  final ShapeBorder? shape;
  final double? size;
  final Color? color;
  final Widget? child;
  final double? elevation;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? padding;
  final MaterialTapTargetSize? shrinkWrap;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        if (onPressed != null) {
          onPressed?.call();
        }
      },
      materialTapTargetSize: shrinkWrap,
      padding: padding,
      elevation: elevation,
      height: size ?? UXConstants.kIconsXL,
      minWidth: size ?? UXConstants.kIconsXL,
      color: color,
      child: child ?? SizedBox(),
      shape: shape,
    );
  }
}
