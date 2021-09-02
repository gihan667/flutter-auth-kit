import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'constants.dart';

ThemeData themeData(BuildContext context, bool isDarkMode) {

  return ThemeData(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: isDarkMode ? kDarkModeScaffoldColor : kScaffoldColor,
    iconTheme: IconThemeData(
      color: isDarkMode ? kDarkModeTextColor : kTextColor,
    ),
    textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme).apply(
      bodyColor: isDarkMode ? kDarkModeTextColor : kTextColor
    ),
    colorScheme: ColorScheme.light(
      primary: kPrimaryColor,
      secondary: kPrimaryLightColor,
      // error: kErrorColor,
    ),
    primaryTextTheme: TextTheme(
      subtitle1: TextStyle(color: isDarkMode ? kDarkModeTextLightColor : kTextColor),
      headline6: TextStyle(
        color: isDarkMode ? kDarkModeTextLightColor : kTextLightColor,
      )
    ),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: isDarkMode ? kDarkModeTextLightColor : kBorderColor),
        borderRadius: BorderRadius.circular(40.0)
      ),
      focusedBorder:  OutlineInputBorder(
        borderSide: BorderSide(color: isDarkMode ? kDarkModeTextLightColor : kBorderColor),
        borderRadius: BorderRadius.circular(40.0)
      ),
      labelStyle: TextStyle(
        color: isDarkMode ? kDarkModeTextLightColor : kTextColor,
        fontWeight: FontWeight.bold
      ),
    ),
    primaryIconTheme: IconThemeData(
      color: isDarkMode ? kDarkModeTextColor : kTextColor
    ),
  );
}

PinTheme pinTheme(BuildContext context, bool isDarkMode) {
  return PinTheme(
    shape: PinCodeFieldShape.box,
    borderRadius: BorderRadius.circular(5),
    inactiveColor: isDarkMode ? kDarkModeTextColor : kDarkModeBorderColor,
    selectedColor: kPrimaryColor,
    inactiveFillColor: isDarkMode ? kDarkModeScaffoldColor : Colors.white,
    activeFillColor: isDarkMode ? kDarkModeScaffoldColor : Colors.white,
    selectedFillColor: isDarkMode ? kDarkModeScaffoldColor : Colors.white,
  );
}