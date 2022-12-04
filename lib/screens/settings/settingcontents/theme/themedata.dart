import 'package:flutter/material.dart';

class ThemeClass {
  static ThemeData lightTheme = ThemeData(
      snackBarTheme: const SnackBarThemeData(
        backgroundColor: Color(0xF879DEFD),
      ),
      scaffoldBackgroundColor: Colors.white,
      colorScheme: const ColorScheme.light(),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFFFF3815),
      ));

  static ThemeData darkTheme = ThemeData(
      snackBarTheme: const SnackBarThemeData(
        backgroundColor: Color(0xF879DEFD),
      ),
      scaffoldBackgroundColor: const Color(0xFF2E2D2D),
      colorScheme: const ColorScheme.dark(),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
        shadowColor: MaterialStateProperty.all(Colors.white),
      )),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFF0C0C0C),
      ));
}
