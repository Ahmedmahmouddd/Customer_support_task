import 'package:customer_support_task/core/constants/app_colors.dart';
import 'package:customer_support_task/core/constants/app_padding.dart';
import 'package:customer_support_task/core/constants/app_text_styles.dart';
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
      HomeMenuItem(
        label: S.of(context).customerService,
        route: AppRoutes.customerService,
      ),
      HomeMenuItem(label: S.of(context).helpFAQ, route: AppRoutes.helpFaqs),
      HomeMenuItem(label: S.of(context).contactUs, route: AppRoutes.contactUs),
      HomeMenuItem(label: S.of(context).liveChat, route: AppRoutes.liveChat),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).homeMenu, style: AppTextStyles.salmonHeading),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppPadding.horizontalPadding),
        child: GridView.builder(
          itemCount: items.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: AppPadding.horizontalPadding,
            mainAxisSpacing: AppPadding.horizontalPadding,
          ),
          itemBuilder: (_, index) {
            final item = items[index];
            return GestureDetector(
              onTap: () => Get.toNamed(item.route),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.salmon,
                  borderRadius: BorderRadius.circular(AppPadding.mediumPadding),
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
          },
        ),
      ),
    );
  }
}
