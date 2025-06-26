import 'package:customer_support_task/core/theme/app_theme.dart';
import 'package:customer_support_task/firebase_options.dart';
import 'package:customer_support_task/generated/l10n.dart';
import 'package:customer_support_task/routes/app_pages.dart';
import 'package:customer_support_task/routes/app_routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const CustomerSupportApp());
}

class CustomerSupportApp extends StatelessWidget {
  const CustomerSupportApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Customer Support',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: AppTheme.lightTheme,
      supportedLocales: S.delegate.supportedLocales,
      initialRoute: AppRoutes.home,
      getPages: AppPages.routes,
    );
  }
}
