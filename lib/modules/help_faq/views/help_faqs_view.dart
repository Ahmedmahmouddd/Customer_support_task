import 'package:flutter/material.dart';

class HelpFaqsView extends StatelessWidget {
  const HelpFaqsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Help & FAQs")),
      body: const Center(
        child: Text("This is the Help & FAQs screen"),
      ),
    );
  }
}
