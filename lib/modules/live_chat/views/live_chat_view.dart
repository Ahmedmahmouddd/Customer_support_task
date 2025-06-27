import 'package:customer_support_task/core/constants/app_constants.dart';
import 'package:customer_support_task/core/theme/app_colors.dart';
import 'package:customer_support_task/core/widgets/custom_appbar.dart';
import 'package:customer_support_task/generated/l10n.dart';
import 'package:customer_support_task/modules/live_chat/controller/live_chat_controller.dart';
import 'package:customer_support_task/modules/live_chat/widgets/chat_bubble.dart';
import 'package:customer_support_task/modules/live_chat/widgets/message_input_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LiveChatView extends StatefulWidget {
  const LiveChatView({super.key});

  @override
  State<LiveChatView> createState() => _LiveChatViewState();
}

class _LiveChatViewState extends State<LiveChatView> {
  final controller = Get.find<LiveChatController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.beige,
      appBar: CustomAppBar(
        title: S.of(context).liveChat,
        subtitle: S.of(context).iamHereToAssistYou,
      ),
      body: SafeArea(
        child: Container(
          color: AppColors.white,
          child: Column(
            children: [
              Expanded(
                child: Obx(() {
                  final messages = controller.messages;
                  return ListView.builder(
                    reverse: true,
                    controller: controller.scrollController,
                    itemCount: messages.value.length,
                    itemBuilder: (_, index) {
                      final msg = messages.value[index];
                      final isMe = msg.sender == "Ahmed";
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppConstants.mediumPadding,
                          vertical: 4,
                        ),
                        child: Row(
                          mainAxisAlignment: isMe
                              ? MainAxisAlignment.end
                              : MainAxisAlignment.start,
                          children: [
                            ChatBubble(
                              message: msg.message,
                              sender: msg.sender,
                              isMe: isMe,
                              time: _formatTime(msg.time),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                }),
              ),
              const MessageInputBar(),
            ],
          ),
        ),
      ),
    );
  }

  String _formatTime(DateTime dateTime) {
    final hour = dateTime.hour.toString().padLeft(2, '0');
    final minute = dateTime.minute.toString().padLeft(2, '0');
    return '$hour:$minute';
  }
}
