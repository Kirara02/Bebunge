import 'package:flutter/material.dart';

class UXIcon extends StatelessWidget {
  const UXIcon(
      {this.size,
      this.padding,
      this.icon,
      this.iconRadius,
      this.iconBackground,
      super.key});
  final double? size;
  final EdgeInsetsGeometry? padding;
  final Widget? icon;
  final BorderRadiusGeometry? iconRadius;
  final Color? iconBackground;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          decoration:
              BoxDecoration(borderRadius: iconRadius, color: iconBackground),
          height: size,
          width: size,
          padding: padding,
        ),
        icon ?? SizedBox()
      ],
    );
  }
}
