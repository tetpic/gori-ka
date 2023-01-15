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
        fontWeight: FontWeight.w400),
    displaySmall: TextStyle(
        color: AppColors.gGray,
        fontFamily: 'Lato',
        fontSize: 12,
        fontWeight: FontWeight.w400),
    headlineMedium: TextStyle(
        color: AppColors.gBlack,
        fontFamily: 'Montserrat',
        fontSize: 17,
        fontWeight: FontWeight.w700),
    headlineLarge: TextStyle(
        color: AppColors.gBlack,
        fontFamily: "Montserrat",
        fontSize: 20,
        fontWeight: FontWeight.w700),
    bodyMedium: TextStyle(
        color: AppColors.gBlack,
        fontFamily: 'Lato',
        fontSize: 14,
        fontWeight: FontWeight.w400),
    labelMedium: TextStyle(
        color: AppColors.gWhiteTotal,
        fontFamily: 'Lato',
        fontSize: 21,
        fontWeight: FontWeight.w700),
  );
}
