import 'package:customer_support_task/core/constants/app_constants.dart';
import 'package:customer_support_task/core/widgets/custom_appbar.dart';
import 'package:customer_support_task/core/widgets/custom_search_field.dart';
import 'package:customer_support_task/generated/l10n.dart';
import 'package:customer_support_task/modules/help_faq/controllers/help_faqs_controller.dart';
import 'package:customer_support_task/modules/help_faq/widgets/contact_use_tile.dart';
import 'package:customer_support_task/modules/help_faq/widgets/faqs_content.dart';
import 'package:customer_support_task/modules/help_faq/widgets/help_screen_top_tabs.dart';
import 'package:customer_support_task/modules/help_faq/widgets/faqs_tabs.dart';
import 'package:customer_support_task/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class HelpFaqsView extends StatefulWidget {
  const HelpFaqsView({super.key});

  @override
  State<HelpFaqsView> createState() => _HelpFaqsViewState();
}

class _HelpFaqsViewState extends State<HelpFaqsView> {
  int mainTabsIndex = 0;
  int faqsTabsIndex = 0;
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ExternalLinksController>();

    return Scaffold(
      appBar: CustomAppBar(
        title: S.of(context).helpFAQ,
        subtitle: S.of(context).howCanWeHelpYou,
      ),
      body: Column(
        children: [
          SizedBox(height: AppConstants.extraSmallPadding),
          HelpScreenTopTabs(
            mainTabsIndex: mainTabsIndex,
            onTabSelected: (index) => setState(() => mainTabsIndex = index),
          ),
          if (mainTabsIndex == 0)
            FAQTabs(
              faqsTabsIndex: faqsTabsIndex,
              onTabSelected: (index) => setState(() => faqsTabsIndex = index),
            ),

          SizedBox(height: AppConstants.smallPadding),
          if (mainTabsIndex == 0)
            SearchField(
              controller: searchController,
              onChanged: (String value) {
                setState(() {});
              },
            ),
          SizedBox(height: AppConstants.smallPadding),
          if (mainTabsIndex == 0)
            FAQsContent(
              mainTabsIndex: mainTabsIndex,
              faqsTabsIndex: faqsTabsIndex,
              searchQuery: searchController.text,
            ),

          if (mainTabsIndex == 1)
            Expanded(
              child: ListView(
                children: [
                  ContactUsTile(
                    onTap: () => Get.toNamed(AppRoutes.customerService),
                    title: S.of(context).customerService,
                    image: "assets/icons/customer_service.svg",
                  ),
                  ContactUsTile(
                    onTap: () async => await launch('tel://+201017094431'),
                    title: S.of(context).call,
                    image: "assets/icons/call.svg",
                  ),
                  ContactUsTile(
                    onTap: controller.launchLinkedIn,
                    title: S.of(context).linkedIn,
                    image: "assets/icons/linkedin.svg",
                  ),
                  ContactUsTile(
                    onTap: controller.launchGitHub,
                    title: S.of(context).gitHub,
                    image: "assets/icons/github.svg",
                  ),
                  ContactUsTile(
                    onTap: controller.launchWhatsApp,
                    title: S.of(context).whatsapp,
                    image: "assets/icons/whatsapp.svg",
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
