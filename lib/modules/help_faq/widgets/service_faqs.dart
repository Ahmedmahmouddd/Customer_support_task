import 'package:customer_support_task/core/constants/app_constants.dart';
import 'package:customer_support_task/generated/l10n.dart';
import 'package:customer_support_task/modules/help_faq/widgets/help_screeb_question_tile.dart';
import 'package:flutter/material.dart';

class ServiceFAQsContent extends StatelessWidget {
  const ServiceFAQsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConstants.horizontalPadding,
      ),
      child: ListView(
        children: [
          HelpScreenQuestionTile(
            question: S.of(context).q9,
            answer: S.of(context).a9,
          ),
          HelpScreenQuestionTile(
            question: S.of(context).q10,
            answer: S.of(context).a10,
          ),
          HelpScreenQuestionTile(
            question: S.of(context).q11,
            answer: S.of(context).a11,
          ),
          HelpScreenQuestionTile(
            question: S.of(context).q12,
            answer: S.of(context).a12,
          ),
        ],
      ),
    );
  }
}