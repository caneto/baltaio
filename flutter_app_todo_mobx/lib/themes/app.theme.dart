import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = const Color(0xFFfa4d73);
const accentColor = const Color(0xFF000000);

ThemeData appTheme() {
  return ThemeData(
    brightness: brightness,
    textTheme: new TextTheme(
      bodyLarge: new TextStyle(
        fontFamily: "Poppins",
      ),
      bodyMedium: TextStyle(
        fontFamily: "Poppins",
      ),
      labelLarge: TextStyle(
        fontFamily: "Poppins",
      ),
      bodySmall: TextStyle(
        fontFamily: "Poppins",
      ),
      headlineMedium: TextStyle(
        fontFamily: "Poppins",
      ),
      displaySmall: TextStyle(
        fontFamily: "Poppins",
      ),
      displayMedium: TextStyle(
        fontFamily: "Poppins",
      ),
      displayLarge: TextStyle(
        fontFamily: "Poppins",
      ),
      headlineSmall: TextStyle(
        fontFamily: "Poppins",
      ),
      labelSmall: TextStyle(
        fontFamily: "Poppins",
      ),
      titleMedium: TextStyle(
        fontFamily: "Poppins",
      ),
      titleSmall: TextStyle(
        fontFamily: "Poppins",
      ),
      titleLarge: TextStyle(
        fontFamily: "Poppins",
      ),
    ),
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Color(0xFFFAFAFA),
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent, 
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: accentColor),
  );
}
