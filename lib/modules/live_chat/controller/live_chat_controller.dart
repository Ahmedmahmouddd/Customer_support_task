import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../data/live_chat_repository.dart';
import '../models/message_model.dart';

class LiveChatController extends GetxController {
  final TextEditingController messageController = TextEditingController();
  final LiveChatRepository _liveChatRepo = LiveChatRepository();
  final scrollController = ScrollController();
  final messages = Rx<List<MessageModel>>([]);

  @override
  void onInit() {
    super.onInit();
    _liveChatRepo.getMessagesStream().listen((data) {
      messages.value = data;

      if (scrollController.hasClients) {
        scrollController.animateTo(
          0.0,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOut,
        );
      }
    });
  }

  Future<void> sendMessage() async {
    final text = messageController.text.trim();
    if (text.isEmpty) return;

    final message = MessageModel(
      message: text,
      sender: "Ahmed", // should be <FirebaseAuth.instance.currentUser!.email!>
      time: DateTime.now(),
    );

    try {
      await _liveChatRepo.sendMessage(message);
      messageController.clear();
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }
}
