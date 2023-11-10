import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ux_constants.dart';
import 'colors.dart';

class UXStyles {
  static final title = TextStyle(
    fontSize: UXConstants.kFontSizeL,
    color: UXColors.text,
    fontWeight: FontWeight.w700,
    fontFamily: GoogleFonts.roboto().fontFamily,
  );

  static final TextStyle headline1 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 40,
    fontFamily: GoogleFonts.manrope().fontFamily,
  );
  static final TextStyle headline2 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 28,
    fontFamily: GoogleFonts.manrope().fontFamily,
  );
  static final TextStyle headline3 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: UXConstants.kFontSizeX,
    fontFamily: GoogleFonts.manrope().fontFamily,
  );
  static final TextStyle headline4 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: UXConstants.kFontSizeL,
    fontFamily: GoogleFonts.manrope().fontFamily,
  );
  static final TextStyle headline5 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: UXConstants.kFontSizeL,
    fontFamily: GoogleFonts.manrope().fontFamily,
  );
  static final TextStyle headline6 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 14,
    fontFamily: GoogleFonts.manrope().fontFamily,
  );

  static final TextStyle bodyText1 = TextStyle(
    fontSize: UXConstants.kFontSizeL,
    fontWeight: FontWeight.normal,
    color: UXColors.grey_80,
    fontFamily: GoogleFonts.lato().fontFamily,
  );

  static final TextStyle bodyText2 = TextStyle(
    fontSize: UXConstants.kFontSizeM,
    fontWeight: FontWeight.normal,
    color: UXColors.text,
    fontFamily: GoogleFonts.lato().fontFamily,
  );

  static const TextStyle inputStyle = TextStyle(
    fontSize: UXConstants.kFontSizeM,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle button = TextStyle(
    fontSize: UXConstants.kFontSizeM,
    fontWeight: FontWeight.bold,
  );

  // https://api.flutter.dev/flutter/material/TextTheme-class.html
  static TextTheme get textTheme {
    final textTheme = TextTheme(
      // Headline
      headlineLarge: headline1,
      headlineMedium: headline2,
      headlineSmall: headline3,
      // headline4: headline4,
      // headline5: headline5,
      // headline6: headline6,

      titleMedium: inputStyle,
      bodyLarge: bodyText1,
      bodyMedium: bodyText2,
      labelLarge: button,
    ).apply(
      bodyColor: UXColors.text,
      displayColor: UXColors.text,
    );
    return textTheme;
  }
}
