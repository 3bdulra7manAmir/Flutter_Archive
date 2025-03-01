import 'package:flutter/material.dart';
import 'package:test_area/Core/constants/app_colors.dart';

abstract class AppTheme
{
  AppTheme._();

  static ThemeData themeData = ThemeData.light().copyWith(
    scaffoldBackgroundColor: AppColors.kBlackColor,
  );
}