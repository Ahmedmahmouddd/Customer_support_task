import 'package:customer_support_task/core/theme/app_colors.dart';
import 'package:customer_support_task/core/theme/app_text_styles.dart';
import 'package:customer_support_task/core/widgets/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String subtitle;
  final VoidCallback? onBack;

  const CustomAppBar({
    super.key,
    required this.title,
    required this.subtitle,
    this.onBack,
  });

  @override
  Size get preferredSize => const Size.fromHeight(88);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min, // <-- Make it flexible
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: AppColors.white,
            elevation: 0,
            foregroundColor: Colors.transparent,
            surfaceTintColor: Colors.transparent,
            shadowColor: Colors.transparent,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: AppColors.black),
              onPressed: onBack ?? () => Get.back(),
            ),
            centerTitle: true,
            title: Text(title, style: AppTextStyles.salmonHeading),
          ),
          Expanded(child: Text(subtitle, style: AppTextStyles.blackSubheading)),
          const SizedBox(height: 4),
          CustomDivider(),
        ],
      ),
    );
  }
}
