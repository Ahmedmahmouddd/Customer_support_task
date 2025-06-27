import 'package:customer_support_task/core/constants/app_constants.dart';
import 'package:customer_support_task/core/theme/app_text_styles.dart';
import 'package:customer_support_task/core/widgets/custom_appbar.dart';
import 'package:customer_support_task/core/widgets/custom_divider.dart';
import 'package:customer_support_task/generated/l10n.dart';
import 'package:customer_support_task/modules/customer_service/widgets/customer_service_navigation_container.dart';
import 'package:customer_support_task/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomerServiceView extends StatelessWidget {
  const CustomerServiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: S.of(context).customerService,
        subtitle: S.of(context).helloIamHereToAssistYou,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: AppConstants.smallPadding,
              horizontal: AppConstants.horizontalPadding,
            ),
            child: Text(
              S.of(context).customerServiceText,
              style: AppTextStyles.greyBody,
            ),
          ),
          SizedBox(height: AppConstants.extraSmallPadding),
          CustomDivider(),
          CustomerServiceNavigationContainer(
            title: S.of(context).howCanWeHelpYou,
            subTitle: S.of(context).support,
            onTap: () {
              Get.toNamed(AppRoutes.liveChat);
            },
          ),
          CustomDivider(),
          CustomerServiceNavigationContainer(
            title: S.of(context).helpCenter,
            subTitle: S.of(context).generalInformation,
            onTap: () {
              Get.toNamed(AppRoutes.helpFaqs);
            },
          ),
        ],
      ),
    );
  }
}
