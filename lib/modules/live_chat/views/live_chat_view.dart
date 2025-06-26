import 'package:customer_support_task/core/constants/app_constants.dart';
import 'package:customer_support_task/core/theme/app_colors.dart';
import 'package:customer_support_task/core/widgets/custom_appbar.dart';
import 'package:customer_support_task/generated/l10n.dart';
import 'package:customer_support_task/modules/live_chat/widgets/chat_bubble.dart';
import 'package:customer_support_task/modules/live_chat/widgets/message_input_bar.dart';
import 'package:flutter/material.dart';

class LiveChatView extends StatefulWidget {
  const LiveChatView({super.key});

  @override
  State<LiveChatView> createState() => _LiveChatViewState();
}

class _LiveChatViewState extends State<LiveChatView> {
  final TextEditingController messageController = TextEditingController();

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
                // WidgetsBinding.instance.addPostFrameCallback((_) {
                //   // if (scrollController.hasClients) {
                //   //   scrollController.jumpTo(0);
                //   // }
                // });
                child: ListView(
                  reverse: true,
                  // controller: scrollController,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppConstants.mediumPadding,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: false
                            ? MainAxisAlignment.start
                            : MainAxisAlignment.end,
                        children: [
                          ChatBubble(
                            message: 'messageContent',
                            time: 'time',
                            isMe: false,
                            sender: 'senderName',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              MessageInputBar(messageController: messageController),
            ],
          ),
        ),
      ),
    );
  }
}
