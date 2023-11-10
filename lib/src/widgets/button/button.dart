import 'package:bebunge/src/config/theme/colors.dart';
import 'package:flutter/material.dart';

import '../../config/ux_constants.dart';
import '../common/indicator.dart';

/// A button that shows a busy indicator in place of title
class UXButton extends StatelessWidget {
  final bool busy;
  final bool enabled;
  final String? title;
  final Widget? child;
  final VoidCallback? onPressed;
  final bool withHorizontalPadding;
  final double? width;
  final double? height;
  final bool showLoadingWidget;
  final Color? backgroundColor;
  final Color? textColors;
  final bool outline;

  const UXButton({
    this.onPressed,
    this.title,
    this.child,
    this.busy = false,
    this.enabled = true,
    Key? key,
    this.withHorizontalPadding = true,
    this.width,
    this.height,
    this.textColors,
    this.showLoadingWidget = true,
    this.backgroundColor = const Color(0xff5AE25A),
    this.outline = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: outline
          ? ButtonStyle(
              backgroundColor: MaterialStateProperty.all(UXColors.white),
              side: MaterialStateProperty.all(
                  BorderSide(color: UXAppColors.primary, width: 1.5)))
          : ButtonStyle(
              backgroundColor: enabled
                  ? MaterialStateProperty.all(backgroundColor)
                  : MaterialStateProperty.all(
                      backgroundColor!.withOpacity(0.6))),
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
        height: height,
        outline: outline,
        title: title,
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
  final Widget? child;
  final bool withHorizontalPadding;
  final double? width;
  final double? height;
  final bool showLoadingWidget;
  final Color textColor;
  final bool outline;

  const XBusyTitle({
    this.title,
    this.child,
    this.busy = false,
    this.outline = false,
    this.textColor = Colors.white,
    Key? key,
    this.withHorizontalPadding = true,
    this.width,
    this.height,
    this.showLoadingWidget = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double padding = 12;
    return SizedBox(
      height: height,
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if ((!busy || !showLoadingWidget) && withHorizontalPadding)
            const SizedBox(width: padding * 2),
          if (!busy || !showLoadingWidget)
            child ??
                Text(
                  title ?? '',
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: outline ? UXAppColors.primary : textColor),
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
            const SizedBox(width: padding * 2),
        ],
      ),
    );
  }
}
