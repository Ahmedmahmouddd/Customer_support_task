import 'package:flutter/material.dart';

class CustomerServiceView extends StatelessWidget {
  const CustomerServiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Customer Service")),
      body: const Center(child: Text("This is the Customer Service screen")),
    );
  }
}
