import 'package:customer_support_task/core/constants/app_constants.dart';
import 'package:customer_support_task/core/theme/app_colors.dart';
import 'package:customer_support_task/core/theme/app_text_styles.dart';
import 'package:customer_support_task/modules/home/models/home_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({super.key, required this.item});

  final HomeMenuItem item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(item.route),
      child: Container(
        padding: EdgeInsets.all(AppConstants.smallPadding),
        decoration: BoxDecoration(
          color: AppColors.salmon,
          borderRadius: BorderRadius.circular(AppConstants.largePadding),
        ),
        child: Center(
          child: Text(
            item.label,
            style: AppTextStyles.terracottaSubheading,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
