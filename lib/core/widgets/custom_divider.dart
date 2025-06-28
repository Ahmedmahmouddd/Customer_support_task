import 'package:customer_support_task/core/theme/app_colors.dart';
import 'package:customer_support_task/core/constants/app_constants.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key, this.indent});

  final double? indent;

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 1,
      indent: indent ?? AppConstants.horizontalPadding,
      endIndent: indent ?? AppConstants.horizontalPadding,
      color: AppColors.brownRosy,
    );
  }
}
