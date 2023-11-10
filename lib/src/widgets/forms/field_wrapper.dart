import 'package:flutter/material.dart';

import '../../config/ux_constants.dart';

class FieldWrapper extends StatelessWidget {
  final Widget? child;
  final double? labelSize;
  final FontWeight? labelWight;
  final String? label;
  final EdgeInsetsGeometry padding;
  final Function()? callback;

  const FieldWrapper(
      {this.label,
      this.callback,
      this.child,
      this.labelSize = UXConstants.kFontSizeM,
      this.labelWight = FontWeight.w400,
      this.padding = const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Padding(
        padding: padding,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label ?? "",
                  style:
                      TextStyle(fontSize: labelSize, fontWeight: labelWight)),
              SizedBox(height: 4),
              child ?? SizedBox()
            ]),
      ),
    );
  }
}
