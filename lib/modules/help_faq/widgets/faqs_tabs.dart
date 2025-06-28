import 'package:customer_support_task/core/constants/app_constants.dart';
import 'package:customer_support_task/core/theme/app_colors.dart';
import 'package:customer_support_task/core/theme/app_text_styles.dart';
import 'package:customer_support_task/generated/l10n.dart';
import 'package:flutter/material.dart';

class FAQTabs extends StatelessWidget {
  const FAQTabs({
    super.key,
    required this.faqsTabsIndex,
    required this.onTabSelected,
  });

  final int faqsTabsIndex;
  final ValueChanged<int> onTabSelected;

  @override
  Widget build(BuildContext context) {
    final faqsTabs = [
      S.of(context).general,
      S.of(context).account,
      S.of(context).service,
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConstants.horizontalPadding,
      ),
      child: Row(
        spacing: AppConstants.smallPadding,
        children: List.generate(faqsTabs.length, (index) {
          final isSelected = faqsTabsIndex == index;
          return Expanded(
            child: ElevatedButton(
              onPressed: () => onTabSelected(index),
              style: ElevatedButton.styleFrom(
                shadowColor: Colors.transparent,
                backgroundColor: isSelected
                    ? AppColors.salmon
                    : AppColors.beige,
              ),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  faqsTabs[index],
                  style: isSelected
                      ? AppTextStyles.terracottaSemiBoldBody
                      : AppTextStyles.beigeSemiBoldBody,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
