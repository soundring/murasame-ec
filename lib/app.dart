import 'package:flutter/material.dart';
import 'package:murasame_ec/home/pages/home_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        primaryTextTheme: const TextTheme(
          headline6: TextStyle(
            color: Color(0xff3E1900),
          ),
        ),
        tabBarTheme: const TabBarTheme(
          labelColor: Color(0xff3E1900),
        ),
      ),
    );
  }
}
