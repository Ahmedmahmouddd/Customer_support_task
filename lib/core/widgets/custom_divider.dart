import 'package:customer_support_task/core/theme/app_colors.dart';
import 'package:customer_support_task/core/constants/app_constants.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      indent: AppConstants.horizontalPadding,
      endIndent: AppConstants.horizontalPadding,
      color: AppColors.salmon,
    );
  }
}
