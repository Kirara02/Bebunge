import 'package:flutter/material.dart';

import '../../config/ux_screen.dart';

class ColumnCustom extends StatefulWidget {
  const ColumnCustom(
      {this.height,
      this.width,
      this.style,
      this.padding,
      this.boxDecoration,
      this.title,
      super.key});
  final double? height;
  final double? width;
  final TextStyle? style;
  final BoxDecoration? boxDecoration;
  final EdgeInsetsGeometry? padding;
  final String? title;

  @override
  State<ColumnCustom> createState() => _ColumnCustomState();
}

class _ColumnCustomState extends State<ColumnCustom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: UXScreens.width,
      decoration: widget.boxDecoration,
      padding: widget.padding,
      alignment: Alignment.centerLeft,
      child: Text(widget.title ?? "", style: widget.style),
    );
  }
}
