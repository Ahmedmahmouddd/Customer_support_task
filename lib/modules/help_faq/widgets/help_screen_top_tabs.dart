import 'package:customer_support_task/core/constants/app_constants.dart';
import 'package:customer_support_task/core/theme/app_colors.dart';
import 'package:customer_support_task/core/theme/app_text_styles.dart';
import 'package:customer_support_task/generated/l10n.dart';
import 'package:flutter/material.dart';

class HelpScreenTopTabs extends StatelessWidget {
  const HelpScreenTopTabs({
    super.key,
    required this.mainTabsIndex,
    required this.onTabSelected,
  });

  final int mainTabsIndex;
  final ValueChanged<int> onTabSelected;

  @override
  Widget build(BuildContext context) {
    final mainTabs = [S.of(context).faqs, S.of(context).contactUs];

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConstants.horizontalPadding,
      ),
      child: Row(
        spacing: AppConstants.smallPadding,
        children: List.generate(mainTabs.length, (index) {
          final isSelected = mainTabsIndex == index;
          return Expanded(
            child: ElevatedButton(
              onPressed: () => onTabSelected(index),
              style: ElevatedButton.styleFrom(
                shadowColor: Colors.transparent,
                backgroundColor: isSelected
                    ? AppColors.salmon
                    : AppColors.beige,
              ),
              child: Text(
                mainTabs[index],
                style: isSelected
                    ? AppTextStyles.terracottaSemiBoldBody
                    : AppTextStyles.beigeSemiBoldBody,
              ),
            ),
          );
        }),
      ),
    );
  }
}
