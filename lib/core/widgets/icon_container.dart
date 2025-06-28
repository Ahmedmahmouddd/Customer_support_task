import 'package:customer_support_task/core/constants/app_constants.dart';
import 'package:customer_support_task/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  const IconContainer({super.key, required this.icon, this.onTap});

  final IconData icon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
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
          icon,
          size: AppConstants.smallIconSize,
          color: AppColors.white,
        ),
      ),
    );
  }
}
