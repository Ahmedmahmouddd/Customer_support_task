import 'package:customer_support_task/modules/help_faq/views/help_faqs_view.dart';
import 'package:customer_support_task/modules/live_chat/views/live_chat_view.dart';
import 'package:get/get.dart';
import '../modules/home/views/home_view.dart';
import '../modules/customer_service/views/customer_service_view.dart';
import '../modules/contact_us/views/contact_us_view.dart';
import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.home,
      page: () => HomeView(),
    ),
    GetPage(
      name: AppRoutes.customerService,
      page: () => CustomerServiceView(),
    ),
    GetPage(
      name: AppRoutes.helpFaqs,
      page: () => HelpFaqsView(),
    ),
    GetPage(
      name: AppRoutes.contactUs,
      page: () => ContactUsView(),
    ),
    GetPage(
      name: AppRoutes.liveChat,
      page: () => LiveChatView(),
    ),
  ];
}
