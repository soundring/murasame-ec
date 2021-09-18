import 'package:flutter/material.dart';

class CustomThemeData {
  static const baseColor = Color(0xffdeddd3);
  static const mainColor = Color(0xff532305);

  static ThemeData lightThemeData() {
    final theme = ThemeData.light().copyWith(
      primaryColorLight: mainColor,
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: mainColor),
        backgroundColor: baseColor,
      ),
      scaffoldBackgroundColor: baseColor,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color(0xffAEAB92),
        selectedItemColor: Colors.white,
      ),
      indicatorColor: Colors.brown,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          side: const BorderSide(color: mainColor),
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        focusColor: Color(0xffAEAB92),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: mainColor),
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
    );

    return theme;
  }

  static ThemeData darkThemeData() {
    final theme = ThemeData.dark().copyWith(
      primaryColorLight: mainColor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey.withOpacity(0.8),
      ),
      indicatorColor: Colors.white,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: Colors.brown.withOpacity(0.8),
          textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
      textTheme: const TextTheme(
        subtitle1: TextStyle(
          fontSize: 16,
        ),
        subtitle2: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        bodyText1: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        bodyText2: TextStyle(
          fontSize: 14,
        ),
        caption: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

    return theme;
  }
}
