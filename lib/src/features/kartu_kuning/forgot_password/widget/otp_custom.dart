import 'package:bebunge/src/config/theme/colors.dart';
import 'package:bebunge/src/config/ux_constants.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpCustom extends StatelessWidget {
  final TextEditingController controller;

  const OtpCustom({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Pinput(
          controller: controller,
          length: 6,
          autofocus: true,
          forceErrorState: false,
          obscureText: false,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          submittedPinTheme: PinTheme(
            height: 44,
            width: 44,
            textStyle: TextStyle(
              fontSize: UXConstants.kFontSizeXL,
              fontWeight: FontWeight.w600,
              color: UXColors.custom_grey3,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: UXAppColors.primary,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          defaultPinTheme: PinTheme(
            height: 44,
            width: 44,
            textStyle: TextStyle(
              fontSize: UXConstants.kFontSizeXL,
              fontWeight: FontWeight.w600,
              color: UXColors.custom_grey3,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: UXAppColors.primary,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ],
    );
  }
}
