import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ux_constants.dart';
import 'colors.dart';
import 'styles.dart';

class UXTheme {
  static final String? fontFamily = GoogleFonts.lato().fontFamily;
  static const barOverLayStyle = SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.light,
  );

  static ThemeData light() => ThemeData(
        fontFamily: fontFamily,

        /// Colors
        primarySwatch: UXAppColors.primaryColors,
        primaryColor: UXAppColors.primary,
        brightness: Brightness.light,
        textTheme: UXStyles.textTheme,

        // ColorScheme
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: UXAppColors.primaryLight,
          primary: UXAppColors.primary,
        ),

        // FloatingActionButton
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          elevation: 1.0,
        ),

        // Appbar
        appBarTheme: const AppBarTheme(
          titleSpacing: 0,
          // shape: Border(
          //   bottom: BorderSide(color: UXColors.grey_20, width: 2),
          // ),
          centerTitle: true,
          elevation: 0,
          systemOverlayStyle: barOverLayStyle,
          foregroundColor: UXAppColors.primary,
          backgroundColor: UXColors.white,
        ),

        /// input
        inputDecorationTheme: InputDecorationTheme(
          errorMaxLines: 3,
          filled: true,
          hintStyle: const TextStyle(color: UXColors.grey_60),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: UXConstants.kPaddingL,
          ),
          fillColor: UXColors.grey_20,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(UXConstants.kRadiusXL),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(UXConstants.kRadiusXL),
            borderSide: const BorderSide(
              color: UXColors.grey_40,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(UXConstants.kRadiusXL),
            borderSide: const BorderSide(
              color: Colors.red,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(UXConstants.kRadiusXL),
            borderSide: const BorderSide(
              color: UXColors.grey_60,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(UXConstants.kRadiusXL),
            borderSide: const BorderSide(
              color: UXAppColors.danger,
            ),
          ),
        ),

        /// Button
        buttonTheme: const ButtonThemeData(
          height: 48,
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all<double>(0),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(UXConstants.kRadiusXL),
              ),
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: UXAppColors.primary),
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: UXAppColors.primary),
              borderRadius: BorderRadius.circular(UXConstants.kRadiusM),
            ),
          ),
        ),

        textButtonTheme: TextButtonThemeData(
            // style: TextButton.styleFrom(),
            ),
        iconTheme: const IconThemeData(),
      );

  static ThemeData dark() => ThemeData.dark();
}
