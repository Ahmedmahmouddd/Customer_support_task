import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  static const salmonHeading = TextStyle(
    fontSize: 20,
    fontFamily: 'poppins',
    fontWeight: FontWeight.bold,
    color: AppColors.salmon,
  );

  static const blackSubheading = TextStyle(
    fontSize: 16,
    fontFamily: 'poppins',
    fontWeight: FontWeight.w600,
    color: AppColors.text,
  );

  static const terracottaSubheading = TextStyle(
    fontSize: 16,
    fontFamily: 'poppins',
    fontWeight: FontWeight.w600,
    color: AppColors.terracotta,
  );

  static const body = TextStyle(
    fontSize: 14,
    fontFamily: 'poppins',
    fontWeight: FontWeight.w500,
    color: AppColors.text,
  );

  static const small = TextStyle(
    fontSize: 12,
    fontFamily: 'poppins',
    fontWeight: FontWeight.w500,
    color: AppColors.text,
  );

  static const bold = TextStyle(
    fontSize: 16,
    fontFamily: 'poppins',
    fontWeight: FontWeight.bold,
    color: AppColors.text,
  );
}
