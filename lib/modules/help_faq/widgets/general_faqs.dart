import 'package:customer_support_task/core/constants/app_constants.dart';
import 'package:customer_support_task/generated/l10n.dart';
import 'package:customer_support_task/modules/help_faq/widgets/help_screeb_question_tile.dart';
import 'package:flutter/material.dart';

class GeneralFAQsContent extends StatelessWidget {
  const GeneralFAQsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConstants.horizontalPadding,
      ),
      child: ListView(
        children: [
          HelpScreenQuestionTile(
            question: S.of(context).q1,
            answer: S.of(context).a1,
          ),
          HelpScreenQuestionTile(
            question: S.of(context).q2,
            answer: S.of(context).a2,
          ),
          HelpScreenQuestionTile(
            question: S.of(context).q3,
            answer: S.of(context).a3,
          ),
          HelpScreenQuestionTile(
            question: S.of(context).q4,
            answer: S.of(context).a4,
          ),
        ],
      ),
    );
  }
}
