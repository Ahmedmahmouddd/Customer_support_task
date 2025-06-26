import 'package:customer_support_task/core/constants/app_colors.dart';
import 'package:customer_support_task/core/constants/app_padding.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      indent: AppPadding.horizontalPadding,
      endIndent: AppPadding.horizontalPadding,
      color: AppColors.salmon,
    );
  }
}
