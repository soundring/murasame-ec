import 'package:flutter/material.dart';

class CustomThemeData {
  static ThemeData lightThemeData() {
    final theme = ThemeData.light().copyWith(
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xffdeddd3),
      ),
      scaffoldBackgroundColor: const Color(0xffdeddd3),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color(0xffAEAB92),
        selectedItemColor: Colors.white,
      ),
      textTheme: const TextTheme(
          bodyText2: TextStyle(
            color: Color(0xff532305),
          ),
          caption: TextStyle(
            color: Color(0xff6a3719),
            fontWeight: FontWeight.bold,
          )),
      primaryTextTheme: const TextTheme(
        headline6: TextStyle(
          color: Color(0xff3E1900),
        ),
      ),
      tabBarTheme: const TabBarTheme(
        labelColor: Color(0xff3E1900),
      ),
      indicatorColor: Colors.brown,
    );

    return theme;
  }

  static ThemeData darkThemeData() {
    final theme = ThemeData.dark().copyWith();

    return theme;
  }
}
