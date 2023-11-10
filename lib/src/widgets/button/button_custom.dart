import 'package:flutter/material.dart';

import '../../config/ux_constants.dart';
import '../common/indicator.dart';

/// A button that shows a busy indicator in place of title
class UXButtonCustom extends StatelessWidget {
  final bool busy;
  final bool enabled;
  final String? title;
  final Color? titleColor;
  final Widget? child;
  final VoidCallback? onPressed;
  final bool withHorizontalPadding;
  final double? padding;
  final double? width;
  final double? height;
  final bool showLoadingWidget;
  final double? verticalPadding;
  final Color? backgroundColor;
  final OutlinedBorder? borderShape;
  final double fontSize;
  final FontWeight fontWeight;
  // final Color? textColors;

  const UXButtonCustom(
      {this.onPressed,
      this.title,
      this.verticalPadding,
      this.titleColor,
      this.child,
      this.busy = false,
      this.enabled = true,
      Key? key,
      this.withHorizontalPadding = true,
      this.width,
      this.height,
      this.showLoadingWidget = true,
      this.backgroundColor = const Color(0xff5AE25A),
      this.borderShape,
      this.padding = 12,
      this.fontSize = 14,
      this.fontWeight = FontWeight.w600})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all(borderShape),
          backgroundColor: MaterialStateProperty.all(backgroundColor)),
      onPressed: enabled && !busy
          ? () {
              if (onPressed != null || busy == false) {
                onPressed?.call();
              }
            }
          : null,
      child: XBusyTitle(
        busy: busy,
        width: width,
        paddingVertical: verticalPadding,
        titleColor: titleColor,
        height: height,
        title: title,
        padding: padding,
        fontSize: fontSize,
        withHorizontalPadding: withHorizontalPadding,
        showLoadingWidget: showLoadingWidget,
        child: child,
      ),
    );
  }
}

class XBusyTitle extends StatelessWidget {
  final bool busy;
  final String? title;
  final Color? titleColor;
  final double? padding;
  final double? paddingVertical;
  final Widget? child;
  final bool withHorizontalPadding;
  final double? width;
  final double? height;
  final bool showLoadingWidget;
  final double fontSize;
  final FontWeight fontWeight;

  const XBusyTitle(
      {this.title,
      this.paddingVertical = 6,
      this.padding,
      this.titleColor,
      this.child,
      this.busy = false,
      Key? key,
      this.withHorizontalPadding = true,
      this.width,
      this.height,
      this.showLoadingWidget = true,
      this.fontSize = 14,
      this.fontWeight = FontWeight.w600})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // const double padding = 12;
    return SizedBox(
      height: height,
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if ((!busy || !showLoadingWidget) && withHorizontalPadding)
            SizedBox(width: padding! * 2, height: paddingVertical),
          if (!busy || !showLoadingWidget)
            child ??
                Text(
                  title ?? '',
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: fontSize,
                      fontWeight: fontWeight,
                      color: titleColor),
                ),
          if (busy && showLoadingWidget)
            Row(
              children: [
                UXIndicator(
                  radius: 10,
                  valueColor: Colors.grey[300],
                  backgroundColor: Colors.grey,
                ),
                const SizedBox(width: UXConstants.kPaddingS),
                const Text(
                  "Loading",
                  maxLines: 1,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          if ((!busy || !showLoadingWidget) && withHorizontalPadding)
            SizedBox(width: padding! * 2),
        ],
      ),
    );
  }
}
