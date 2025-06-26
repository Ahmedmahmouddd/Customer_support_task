import 'package:customer_support_task/core/constants/app_constants.dart';
import 'package:customer_support_task/core/theme/app_colors.dart';
import 'package:customer_support_task/generated/l10n.dart';
import 'package:customer_support_task/modules/live_chat/widgets/custom_text_field.dart';
import 'package:customer_support_task/modules/live_chat/widgets/message_input_bar_button.dart';
import 'package:flutter/material.dart';

class MessageInputBar extends StatelessWidget {
  const MessageInputBar({
    super.key,
     required this.messageController
  });

  final TextEditingController messageController;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.beige,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppConstants.extraLargePadding),
          topRight: Radius.circular(AppConstants.extraLargePadding),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          AppConstants.mediumPadding,
          AppConstants.smallPadding,
          AppConstants.mediumPadding,
          0,
        ),
        child: Row(
          spacing: AppConstants.smallPadding,
          children: [
            MessageInputIconButton(
              iconAsset: "assets/icons/camera.svg",
              onTap: () {},
            ),
            Expanded(
              child: CustomTextField(
                myController: messageController,
                hint: S.of(context).sendAmessage,
                obscureField: false,
                initialObscureText: false,
              ),
            ),
            MessageInputIconButton(
              iconAsset: "assets/icons/microphone.svg",
              onTap: () {},
            ),
            MessageInputIconButton(
              iconAsset: "assets/icons/send.svg",
              onTap: () {
                // await sendMessage(messageController.text);
                // messageController.clear();
              },
            ),
          ],
        ),
      ),
    );
  }
}
