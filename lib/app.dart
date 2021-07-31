import 'package:flutter/material.dart';
import 'package:murasame_ec/home/pages/home_page.dart';
import 'package:murasame_ec/material/theme.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lightTheme = CustomThemeData.lightThemeData();
    final darkTheme = CustomThemeData.darkThemeData();

    return MaterialApp(
      home: HomePage(),
      theme: lightTheme,
      darkTheme: darkTheme,
    );
  }
}
