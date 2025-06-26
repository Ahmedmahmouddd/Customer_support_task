import 'package:customer_support_task/core/widgets/custom_appbar.dart';
import 'package:customer_support_task/generated/l10n.dart';
import 'package:customer_support_task/modules/live_chat/widgets/chat_bubble.dart';
import 'package:customer_support_task/modules/live_chat/widgets/message_input_bar.dart';
import 'package:flutter/material.dart';

class LiveChatView extends StatelessWidget {
  const LiveChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: S.of(context).liveChat,
        subtitle: S.of(context).iamHereToAssistYou,
      ),
      body: Column(
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
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: true
                      ? MainAxisAlignment.end
                      : MainAxisAlignment.start,
                  children: [
                    // data['id'] == FirebaseAuth.instance.currentUser!.email!
                    //     ? Container()
                    //     :
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0, bottom: 5),
                      child: Container(
                        height: MediaQuery.of(context).size.width * 0.12,
                        width: MediaQuery.of(context).size.width * 0.12,
                        decoration: const BoxDecoration(shape: BoxShape.circle),
                        child: ClipOval(
                          // child: Image(
                          //   image: data['image'].startsWith('http')
                          //       ? NetworkImage(data['image'])
                          //       : const AssetImage("assets/no_profile_img.png") as ImageProvider,
                          //   fit: BoxFit.cover,
                          // ),
                        ),
                      ),
                    ),
                    ChatBubble(
                      message: 'messageContent',
                      time: 'time',
                      isMe: false,
                      sender: 'senderName',
                    ),
                  ],
                ),
              ],
            ),
          ),
          // MessageInputBar(messageController: messageController),
        ],
      ),
    );
  }
}
