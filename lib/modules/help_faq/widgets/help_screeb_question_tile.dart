import 'package:customer_support_task/core/constants/app_constants.dart';
import 'package:customer_support_task/core/theme/app_colors.dart';
import 'package:customer_support_task/core/theme/app_text_styles.dart';
import 'package:customer_support_task/core/widgets/custom_divider.dart';
import 'package:customer_support_task/core/widgets/icon_container.dart';
import 'package:customer_support_task/main.dart';
import 'package:flutter/material.dart';

class HelpScreenQuestionTile extends StatefulWidget {
  const HelpScreenQuestionTile({
    super.key,
    required this.question,
    required this.answer,
  });

  final String question;
  final String answer;

  @override
  State<HelpScreenQuestionTile> createState() => _HelpScreenQuestionTileState();
}

class _HelpScreenQuestionTileState extends State<HelpScreenQuestionTile> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => setState(() => isExpanded = !isExpanded),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: AppConstants.mediumPadding,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                (isExpanded)
                    ? Expanded(
                        child: Text(
                          widget.question,
                          style: AppTextStyles.salmonBoldSubheading,
                        ),
                      )
                    : Expanded(
                        child: Text(
                          widget.question,
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyles.salmonBoldSubheading,
                        ),
                      ),
                SizedBox(width: AppConstants.extraSmallPadding),
                (isExpanded)
                    ? Icon(
                        Icons.keyboard_arrow_up_rounded,
                        color: AppColors.black,
                      )
                    : IconContainer(
                        icon: isExpanded
                            ? Icons.keyboard_arrow_up_rounded
                            : Icons.keyboard_arrow_down_rounded,
                      ),
              ],
            ),
          ),
        ),
        if (isExpanded) CustomDivider(indent: 0),
        if (isExpanded) SizedBox(height: AppConstants.smallPadding),
        if (isExpanded)
          Padding(
            padding: const EdgeInsets.only(
              bottom: AppConstants.mediumPadding,
              left: AppConstants.smallPadding,
              right: AppConstants.smallPadding,
            ),
            child: Align(
              alignment: isArabicLocale()
                  ? Alignment.centerRight
                  : Alignment.centerLeft,
              child: Text(widget.answer, style: AppTextStyles.blackBody),
            ),
          ),
        const CustomDivider(indent: 0),
      ],
    );
  }
}
