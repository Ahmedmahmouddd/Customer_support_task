import 'package:customer_support_task/core/constants/app_constants.dart';
import 'package:customer_support_task/core/widgets/custom_appbar.dart';
import 'package:customer_support_task/core/widgets/custom_divider.dart';
import 'package:customer_support_task/generated/l10n.dart';
import 'package:customer_support_task/modules/help_faq/widgets/account_faqs.dart';
import 'package:customer_support_task/modules/help_faq/widgets/general_faqs.dart';
import 'package:customer_support_task/modules/help_faq/widgets/help_screen_top_tabs.dart';
import 'package:customer_support_task/modules/help_faq/widgets/faqs_tabs.dart';
import 'package:customer_support_task/modules/help_faq/widgets/service_faqs.dart';
import 'package:flutter/material.dart';

class HelpFaqsView extends StatefulWidget {
  const HelpFaqsView({super.key});

  @override
  State<HelpFaqsView> createState() => _HelpFaqsViewState();
}

class _HelpFaqsViewState extends State<HelpFaqsView> {
  int mainTabsIndex = 0;
  int faqsTabsIndex = 0;

  @override
  Widget build(BuildContext context) {
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
          CustomDivider(),
          if (mainTabsIndex == 0)
            Expanded(
              child: Builder(
                builder: (_) {
                  if (faqsTabsIndex == 0) {
                    return const GeneralFAQsContent();
                  } else if (faqsTabsIndex == 1) {
                    return const AccountFAQsContent();
                  } else {
                    return const ServiceFAQsContent();
                  }
                },
              ),
            ),
        ],
      ),
    );
  }
}
