import 'package:customer_support_task/core/constants/app_constants.dart';
import 'package:customer_support_task/core/theme/app_colors.dart';
import 'package:customer_support_task/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    super.key,
    required this.message,
    required this.time,
    required this.isMe,
    required this.sender,
  });
  final String sender;
  final bool isMe;
  final String message;
  final String time;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: isMe
          ? CrossAxisAlignment.end
          : CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: AppConstants.extraLargePadding,
            vertical: AppConstants.smallPadding,
          ),
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.7,
            minWidth: MediaQuery.of(context).size.width * 0.3,
          ),
          decoration: BoxDecoration(
            color: isMe ? AppColors.beige : AppColors.accent,
            borderRadius: BorderRadius.circular(AppConstants.largePadding),
          ),
          child: Text(message, style: AppTextStyles.blackBody),
        ),
        Text(time, style: AppTextStyles.blackSmall),
      ],
    );
  }
}
