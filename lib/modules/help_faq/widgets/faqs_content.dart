import 'package:customer_support_task/core/constants/app_constants.dart';
import 'package:customer_support_task/generated/l10n.dart';
import 'package:customer_support_task/modules/help_faq/widgets/help_screeb_question_tile.dart';
import 'package:flutter/material.dart';

class FAQsContent extends StatefulWidget {
  const FAQsContent({
    super.key,
    required this.mainTabsIndex,
    required this.faqsTabsIndex,
    required this.searchQuery,
  });

  final int mainTabsIndex;
  final int faqsTabsIndex;
  final String searchQuery;

  @override
  State<FAQsContent> createState() => _FAQsContentState();
}

class _FAQsContentState extends State<FAQsContent> {
  @override
  Widget build(BuildContext context) {
    final List<HelpScreenQuestionTile> tiles;

    if (widget.faqsTabsIndex == 0) {
      tiles = [
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
      ];
    } else if (widget.faqsTabsIndex == 1) {
      tiles = [
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
      ];
    } else {
      tiles = [
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
      ];
    }

    final filteredTiles = widget.searchQuery.isEmpty
        ? tiles
        : tiles.where((tile) {
            return tile.question.toLowerCase().contains(
              widget.searchQuery.toLowerCase(),
            );
          }).toList();

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppConstants.horizontalPadding,
        ),
        child: ListView(children: filteredTiles),
      ),
    );
  }
}
