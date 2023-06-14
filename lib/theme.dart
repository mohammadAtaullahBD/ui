import 'package:flutter/material.dart';

ThemeData getThemeData() {
  return ThemeData(
    // brightness: Brightness.light,
    // primaryColor: const Color.fromRGBO(77, 186, 128, 1),
    // accentColor: Colors.blue,
    fontFamily: 'Poppins',

    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Color.fromRGBO(77, 186, 128, 1),
      onPrimary: Color.fromRGBO(209, 234, 217, 1),
      secondary: Color.fromRGBO(243, 243, 243, 1),
      onSecondary: Color.fromRGBO(77, 186, 128, 1),
      error: Color.fromARGB(255, 241, 101, 132),
      onError: Color.fromRGBO(77, 186, 128, 1),
      background: Colors.white,
      onBackground: Colors.black,
      surface: Color.fromRGBO(77, 186, 128, 1),
      onSurface: Color.fromRGBO(77, 186, 128, 1),
    ),
    // Bottom Navigation
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Color.fromRGBO(77, 186, 128, 1),
      unselectedItemColor: Color.fromRGBO(58, 58, 58, 1),
    ),
    // /// input
    inputDecorationTheme: const InputDecorationTheme(
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromRGBO(77, 186, 128, 1),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      filled: true,
      fillColor: Color.fromRGBO(243, 243, 243, 1),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (states) => const Color.fromRGBO(77, 186, 128, 1),
        ),
        shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
          (states) => RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    ),
  );
}
