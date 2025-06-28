import 'package:customer_support_task/core/widgets/custom_divider.dart';
import 'package:customer_support_task/modules/help_faq/widgets/account_faqs.dart';
import 'package:customer_support_task/modules/help_faq/widgets/general_faqs.dart';
import 'package:customer_support_task/modules/help_faq/widgets/service_faqs.dart';
import 'package:flutter/material.dart';

class FAQsContent extends StatelessWidget {
  const FAQsContent({
    super.key,
    required this.mainTabsIndex,
    required this.faqsTabsIndex,
  });

  final int mainTabsIndex;
  final int faqsTabsIndex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          CustomDivider(),
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