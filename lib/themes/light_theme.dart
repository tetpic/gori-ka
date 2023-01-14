import 'package:flutter/material.dart';
import 'colors.dart';

class GoriLightTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      textTheme: lightTextTheme(),
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.gWhiteTotal,
      dialogTheme: DialogTheme(
          backgroundColor: AppColors.gWhiteTotal,
          titleTextStyle: lightTextTheme().headline1,
          contentTextStyle: lightTextTheme().headline2),
    );
  }
}

TextTheme lightTextTheme() {
  return const TextTheme(
      displayLarge: TextStyle(
          color: AppColors.gBlack,
          fontFamily: 'Lato',
          fontSize: 40,
          fontWeight: FontWeight.w400));
}
