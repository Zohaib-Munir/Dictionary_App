import 'package:dictionary_app/constants/colors.dart';
import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.appBarColor,
    centerTitle: true,
  ),
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 28,
      fontFamily: 'Bona',
      color: AppColors.fillColor,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'Bona',
      fontSize: 14,
      color: AppColors.textColor,
    ),
    bodyLarge: TextStyle(
      fontFamily: 'Bona',
      fontSize: 16,
      color: AppColors.fillColor,
    ),
  ),
);
