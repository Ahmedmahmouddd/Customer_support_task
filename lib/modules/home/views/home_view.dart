import 'package:customer_support_task/core/constants/app_constants.dart';
import 'package:customer_support_task/core/theme/app_text_styles.dart';
import 'package:customer_support_task/generated/l10n.dart';
import 'package:customer_support_task/modules/home/models/home_menu_item.dart';
import 'package:customer_support_task/modules/home/widgets/home_container.dart';
import 'package:flutter/material.dart';
import '../../../routes/app_routes.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  List<HomeMenuItem> getMenuItems(BuildContext context) {
    return [
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
  }

  @override
  Widget build(BuildContext context) {
    final items = getMenuItems(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
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
            return HomeContainer(item: item);
          }).toList(),
        ),
      ),
    );
  }
}
