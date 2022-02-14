import 'package:flutter/material.dart';

@immutable
class AppTheme {
  static ThemeData defineLight() {
    return ThemeData(
      fontFamily: "Nunito",

      colorScheme: ColorScheme(
          primaryVariant: Colors.purple,
          secondaryVariant: Colors.blueAccent,
          surface: Colors.blue,
          background: Colors.black38,
          error: Colors.red,
          onError: Colors.redAccent,
          onPrimary: Colors.white,
          onSecondary: Colors.deepPurpleAccent,
          onSurface: Colors.white,
          onBackground: Colors.black38,
          brightness: Brightness.light,
          primary: Colors.deepOrangeAccent,
          secondary: Colors.deepPurple,

      ),
    );
  }

    static ThemeData defineDark() {
      return ThemeData(
        fontFamily: "Nunito",
        primaryColor: Colors.lightBlueAccent,
        accentColor: Colors.deepPurple,
        focusColor: Colors.deepPurple,
      );
  }
}