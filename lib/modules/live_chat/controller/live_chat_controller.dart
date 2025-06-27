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

    final userMessage = MessageModel(
      message: text,
      sender: "Ahmed",
      time: DateTime.now(),
    );

    try {
      // Send user message
      await _liveChatRepo.sendMessage(userMessage);
      messageController.clear();

      // Send auto reply after short delay
      Future.delayed(const Duration(milliseconds: 500), () async {
        final replyText = _getAutoReplyFor(text);

        final autoReply = MessageModel(
          message: replyText,
          sender: "Support",
          time: DateTime.now(),
        );

        await _liveChatRepo.sendMessage(autoReply);
      });
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }

  String _getAutoReplyFor(String userMessage) {
    final lower = userMessage.toLowerCase();

    if (lower.contains('hi') ||
        lower.contains('hello') ||
        lower.contains('hey') ||
        lower.contains('اهلا') ||
        lower.contains('أهلا') ||
        lower.contains('مرحبا') ||
        lower.contains('سلام') ||
        lower.contains('صباح الخير') ||
        lower.contains('مساء الخير')) {
      return "Hello! How can I help you today?";
    } else if (lower.contains('problem') ||
        lower.contains('issue') ||
        lower.contains('complaint') ||
        lower.contains('مشكلة') ||
        lower.contains('مشكله') ||
        lower.contains('خطأ') ||
        lower.contains('خطا') ||
        lower.contains('استفسار')) {
      return "Sorry to hear that! Can you describe the issue?";
    } else if (lower.contains('refund') ||
        lower.contains('return') ||
        lower.contains('استرجاع') ||
        lower.contains('ارجاع') ||
        lower.contains('استرداد')) {
      return "Refunds typically take 3-5 business days.";
    } else if (lower.contains('order') ||
        lower.contains('purchase') ||
        lower.contains('طلب') ||
        lower.contains('شراء')) {
      return "Please provide your order number so I can check.";
    }

    // Default fallback
    return "Thank you! One of our agents will get back to you shortly.";
  }
}
