import 'package:flutter/material.dart';

class CustomThemeData {
  static const baseColor = Color(0xffdeddd3);
  static const mainColor = Color(0xff532305);

  static ThemeData lightThemeData() {
    final theme = ThemeData.light().copyWith(
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: mainColor),
        backgroundColor: baseColor,
      ),
      scaffoldBackgroundColor: baseColor,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color(0xffAEAB92),
        selectedItemColor: Colors.white,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: mainColor,
          textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          side: const BorderSide(color: mainColor),
          backgroundColor: const Color(0xffe9e8e2),
        ),
      ),
      textTheme: const TextTheme(
          subtitle1: TextStyle(
            color: mainColor,
            fontSize: 16,
          ),
          subtitle2: TextStyle(
            color: mainColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          bodyText1: TextStyle(
            color: mainColor,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          bodyText2: TextStyle(
            color: mainColor,
            fontSize: 14,
          ),
          caption: TextStyle(
            color: mainColor,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          )),
      primaryTextTheme: const TextTheme(
        headline6: TextStyle(
          color: mainColor,
        ),
      ),
      tabBarTheme: const TabBarTheme(
        labelColor: mainColor,
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
