import 'package:customer_support_task/core/constants/app_constants.dart';
import 'package:customer_support_task/core/theme/app_colors.dart';
import 'package:customer_support_task/core/theme/app_text_styles.dart';
import 'package:customer_support_task/core/widgets/custom_appbar.dart';
import 'package:customer_support_task/core/widgets/custom_divider.dart';
import 'package:customer_support_task/generated/l10n.dart';
import 'package:customer_support_task/modules/help_faq/views/help_screen_top_tabs.dart';
import 'package:customer_support_task/modules/help_faq/widgets/faqs_tabs.dart';
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
          Expanded(
            child: Builder(
              builder: (_) {
                if (faqsTabsIndex == 0) {
                  return const GeneralFaqsContent();
                } else if (faqsTabsIndex == 1) {
                  return const AccountFaqsContent();
                } else {
                  return const ServiceFaqsContent();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///

class GeneralFaqsContent extends StatelessWidget {
  const GeneralFaqsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConstants.horizontalPadding,
      ),
      child: ListView(
        children: [
          HelpScreenQuestionTile(),
          HelpScreenQuestionTile(),
          HelpScreenQuestionTile(),
        ],
      ),
    );
  }
}

class HelpScreenQuestionTile extends StatelessWidget {
  const HelpScreenQuestionTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: AppConstants.mediumPadding,
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  "question here please question here",
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.salmonBoldSubheading,
                ),
              ),
              SizedBox(width: AppConstants.extraSmallPadding),
              InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: () {},
                child: Container(
                  width: AppConstants.extraSmallContainerSize,
                  height: AppConstants.extraSmallContainerSize,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.salmon,
                  ),
                  child: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    size: AppConstants.smallIconSize,
                    color: AppColors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        CustomDivider(),
      ],
    );
  }
}

class AccountFaqsContent extends StatelessWidget {
  const AccountFaqsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          title: Text("How to reset my password?"),
          subtitle: Text("Go to Settings > Account > Reset Password."),
        ),
        ListTile(
          title: Text("How to update profile?"),
          subtitle: Text("Tap on Profile tab and edit your information."),
        ),
      ],
    );
  }
}

class ServiceFaqsContent extends StatelessWidget {
  const ServiceFaqsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          title: Text("What is this app?"),
          subtitle: Text("This app helps you connect with customer service."),
        ),
        ListTile(
          title: Text("How do I use it?"),
          subtitle: Text("Just tap on any feature to get started."),
        ),
      ],
    );
  }
}
