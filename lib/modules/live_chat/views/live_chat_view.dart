import 'package:customer_support_task/core/widgets/custom_appbar.dart';
import 'package:customer_support_task/generated/l10n.dart';
import 'package:flutter/material.dart';

class LiveChatView extends StatelessWidget {
  const LiveChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: S.of(context).liveChat,
        subtitle: 'How Can We Help You?',
      ),
      body: const Center(child: Text("This is the Live Chat screen")),
    );
  }
}
