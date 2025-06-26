import 'package:customer_support_task/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      fontFamily: 'poppins',
      scaffoldBackgroundColor: AppColors.white,
      primaryColor: AppColors.salmon,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.salmon,
        primary: AppColors.salmon,
        secondary: AppColors.terracotta,
        background: AppColors.white,
        brightness: Brightness.light,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.white,
        elevation: 0,
        shadowColor: Colors.transparent,
        iconTheme: IconThemeData(color: AppColors.black),
        titleTextStyle: AppTextStyles.salmonHeading,
      ),
    );
  }
}
