import 'package:flutter/material.dart';

class LiveChatView extends StatelessWidget {
  const LiveChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Live Chat")),
      body: const Center(child: Text("This is the Live Chat screen")),
    );
  }
}
