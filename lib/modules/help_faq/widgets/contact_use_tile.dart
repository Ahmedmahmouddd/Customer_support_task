import 'package:customer_support_task/core/constants/app_constants.dart';
import 'package:customer_support_task/core/theme/app_colors.dart';
import 'package:customer_support_task/core/theme/app_text_styles.dart';
import 'package:customer_support_task/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContactUsTile extends StatelessWidget {
  const ContactUsTile({
    super.key,
    this.onTap,
    required this.title,
    required this.image,
  });

  final Function()? onTap;
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppConstants.horizontalPadding,
            ),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.salmon,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(
                      AppConstants.extraSmallPadding,
                    ),
                    child: SvgPicture.asset(image, color: AppColors.black),
                  ),
                ),
                SizedBox(width: AppConstants.smallPadding),
                Text(title, style: AppTextStyles.blackSubheading),
                Spacer(),
                Icon(
                  isArabicLocale()
                      ? Icons.keyboard_arrow_left_rounded
                      : Icons.keyboard_arrow_right_rounded,
                  color: AppColors.black,
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: AppConstants.largePadding),
      ],
    );
  }
}
