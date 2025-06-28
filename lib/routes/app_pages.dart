import 'package:customer_support_task/modules/help_faq/views/help_faqs_view.dart';
import 'package:customer_support_task/modules/live_chat/bindings/live_chat_binding.dart';
import 'package:customer_support_task/modules/live_chat/views/live_chat_view.dart';
import 'package:customer_support_task/modules/profile_picture_upload/views/profile_picture_upload_view.dart';
import 'package:get/get.dart';
import '../modules/home/views/home_view.dart';
import '../modules/customer_service/views/customer_service_view.dart';
import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(name: AppRoutes.home, page: () => HomeView()),
    GetPage(name: AppRoutes.customerService, page: () => CustomerServiceView()),
    GetPage(name: AppRoutes.helpFaqs, page: () => HelpFaqsView()),
    GetPage(
      name: AppRoutes.profilePictureUpload,
      page: () => ProfilePictureUploadView(),
    ),

    GetPage(
      name: AppRoutes.liveChat,
      page: () => LiveChatView(),
      binding: LiveChatBinding(),
    ),
  ];
}
