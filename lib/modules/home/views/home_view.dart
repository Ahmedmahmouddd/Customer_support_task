import 'package:customer_support_task/core/theme/app_colors.dart';
import 'package:customer_support_task/core/constants/app_constants.dart';
import 'package:customer_support_task/core/theme/app_text_styles.dart';
import 'package:customer_support_task/generated/l10n.dart';
import 'package:customer_support_task/modules/home/models/home_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_routes.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      HomeMenuItem(label: S.of(context).helpFAQ, route: AppRoutes.helpFaqs),
      HomeMenuItem(
        label: S.of(context).customerService,
        route: AppRoutes.customerService,
      ),
      HomeMenuItem(label: S.of(context).liveChat, route: AppRoutes.liveChat),
      HomeMenuItem(
        label: S.of(context).profilePictureUpload,
        route: AppRoutes.profilePictureUpload,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).homeMenu, style: AppTextStyles.salmonHeading),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppConstants.horizontalPadding),
        child: GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 2,
          crossAxisSpacing: AppConstants.horizontalPadding,
          mainAxisSpacing: AppConstants.horizontalPadding,
          children: items.map((item) {
            return GestureDetector(
              onTap: () => Get.toNamed(item.route),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.salmon,
                  borderRadius: BorderRadius.circular(
                    AppConstants.largePadding,
                  ),
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
          }).toList(),
        ),
      ),
    );
  }
}
