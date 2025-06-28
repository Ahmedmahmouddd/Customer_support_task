import 'package:customer_support_task/core/constants/app_constants.dart';
import 'package:customer_support_task/core/theme/app_colors.dart';
import 'package:customer_support_task/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomerServiceNavigationContainer extends StatelessWidget {
  const CustomerServiceNavigationContainer({
    super.key,
    required this.title,
    required this.subTitle,
    this.onTap,
  });

  final String title;
  final String subTitle;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppConstants.mediumPadding,
          horizontal: AppConstants.horizontalPadding,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: AppTextStyles.blackSubheading),
                Text(subTitle, style: AppTextStyles.greyBody),
              ],
            ),
            InkWell(
              borderRadius: BorderRadius.circular(50),
              onTap: onTap,
              child: Container(
                width: AppConstants.extraSmallContainerSize,
                height: AppConstants.extraSmallContainerSize,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.salmon,
                ),
                child: Icon(
                  Icons.keyboard_arrow_right_rounded,
                  size: AppConstants.smallIconSize,
                  color: AppColors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
