import 'package:flutter/material.dart';
import 'colors.dart';

ThemeData createLightTheme() {
  return ThemeData(
    textTheme: createTextTheme(),
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.gBlack,
    extensions: <ThemeExtension<dynamic>>[
      ThemeColors.light,
      ThemeTextStyles.light,
      ThemeGradients.light,
    ],
    dialogTheme: DialogTheme(
      backgroundColor: AppColors.white,
      titleTextStyle: headline1.copyWith(
        color: AppColors.black,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      contentTextStyle: headline1.copyWith(
        color: AppColors.black,
      ),
    ),
    focusColor: Colors.blue.withOpacity(0.2),
    appBarTheme: AppBarTheme(backgroundColor: Colors.white),
  );
}

TextTheme createTextTheme() {
  return const TextTheme(
    headline1: TextStyle(color: AppColors.gMint),
    headline2: TextStyle(color: AppColors.gWhiteBad),
  );
}
