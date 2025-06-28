import 'package:customer_support_task/modules/help_faq/controllers/help_faqs_controller.dart';
import 'package:get/get.dart';

class HelpFaqsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExternalLinksController>(() => ExternalLinksController());
  }
}
