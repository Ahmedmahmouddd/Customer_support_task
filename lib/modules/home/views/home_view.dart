import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_routes.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {'label': 'Customer Service', 'route': AppRoutes.customerService},
      {'label': 'Help & FAQs', 'route': AppRoutes.helpFaqs},
      {'label': 'Contact Us', 'route': AppRoutes.contactUs},
      {'label': 'Live Chat', 'route': AppRoutes.liveChat},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Main Menu")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          itemCount: items.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemBuilder: (_, index) {
            final item = items[index];
            return GestureDetector(
              onTap: () => Get.toNamed(item['route']!),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Text(
                    item['label']!,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
