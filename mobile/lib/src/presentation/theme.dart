import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color primary = Color(0xFFFFFFFF);
  static const Color second = Color(0xFF4EB9F6);
  static const Color third = Color(0xFF375b73);
}

ThemeData get appTheme {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.third,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.third,
    ),
  );
}
