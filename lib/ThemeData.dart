import 'package:flutter/material.dart';
import 'package:islami/MyColors.dart';

class MyThemeData {
  static ThemeData lightMode = ThemeData(
    primaryColor: MyColors.PrimeryColor,
    textTheme: TextTheme(
      bodySmall: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
      bodyLarge: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w400,
      ),
    ),
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent, centerTitle: true, elevation: 0),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: MyColors.Black,
    ),
  );
}
