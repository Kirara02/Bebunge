import 'package:bebunge/l10n/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../config/theme/colors.dart';
import '../../config/ux_constants.dart';

class CustomWrapper extends StatelessWidget {
  final Widget? child;
  final String? name;
  final double? titleSize;
  final Color? mainTitleColor;
  final FontWeight? buttonTitleWeight;
  final Color? buttonTitleColor;
  final Color? buttonColor;
  final double? headingSize;
  final FontWeight? headingWeight;
  final EdgeInsetsGeometry? buttonPadding;
  final BorderRadius? buttonRadius;
  final Function()? onPressed;
  final bool buttonEnable;
  final EdgeInsetsGeometry paddingWrapper;
  const CustomWrapper(
      {this.name,
      this.child,
      this.onPressed,
      this.buttonTitleColor,
      this.mainTitleColor,
      this.headingWeight,
      this.buttonPadding,
      this.headingSize,
      this.titleSize,
      this.buttonColor,
      this.buttonTitleWeight,
      this.buttonRadius,
      this.paddingWrapper =
          const EdgeInsets.only(bottom: 15, left: 20, right: 20, top: 10),
      this.buttonEnable = false,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: paddingWrapper,
          child: Row(
            children: [
              Expanded(
                child: Text(
                  name ?? "",
                  style: TextStyle(
                      fontSize: headingSize ?? UXConstants.kFontSizeM,
                      fontWeight: headingWeight ?? FontWeight.w700,
                      color: mainTitleColor ?? UXColors.grey_80),
                ),
              ),
              buttonEnable
                  ? Container(
                      decoration: BoxDecoration(
                          color: buttonColor ?? UXAppColors.biru1,
                          borderRadius: buttonRadius),
                      child: Material(
                        borderRadius: buttonRadius,
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: buttonRadius,
                          splashColor: Colors.white,
                          onTap: onPressed,
                          child: Padding(
                            padding: buttonPadding ?? EdgeInsets.all(8.0),
                            child: Text(
                              LocaleKeys.see_more.tr(),
                              style: TextStyle(
                                  fontSize: titleSize ?? UXConstants.kFontSizeS,
                                  fontWeight:
                                      buttonTitleWeight ?? FontWeight.w700,
                                  color: buttonTitleColor ?? UXColors.white),
                            ),
                          ),
                        ),
                      ),
                    )
                  : SizedBox(),
            ],
          ),
        ),
        child ?? SizedBox(),
      ],
    );
  }
}
