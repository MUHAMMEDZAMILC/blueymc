import 'package:flutter/material.dart';

class ThemeClass {
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      colorScheme: const ColorScheme.light(),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFFFF3815),
      ));

  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Color(0xFF2E2D2D),
      colorScheme: ColorScheme.dark(),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
        shadowColor: MaterialStateProperty.all(Colors.white),
      )),
      appBarTheme: AppBarTheme(
        backgroundColor: Color(0xFF0C0C0C),
      ));
}
