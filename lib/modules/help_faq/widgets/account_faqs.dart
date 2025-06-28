import 'package:customer_support_task/core/constants/app_constants.dart';
import 'package:customer_support_task/generated/l10n.dart';
import 'package:customer_support_task/modules/help_faq/widgets/help_screeb_question_tile.dart';
import 'package:flutter/material.dart';

class AccountFAQsContent extends StatelessWidget {
  const AccountFAQsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConstants.horizontalPadding,
      ),
      child: ListView(
        children: [
          HelpScreenQuestionTile(
            question: S.of(context).q5,
            answer: S.of(context).a5,
          ),
          HelpScreenQuestionTile(
            question: S.of(context).q6,
            answer: S.of(context).a6,
          ),
          HelpScreenQuestionTile(
            question: S.of(context).q7,
            answer: S.of(context).a7,
          ),
          HelpScreenQuestionTile(
            question: S.of(context).q8,
            answer: S.of(context).a8,
          ),
        ],
      ),
    );
  }
}
