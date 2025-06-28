import 'package:customer_support_task/modules/profile_picture_upload/controllers/profile_picture_upload_controller.dart';
import 'package:get/get.dart';

class ProfilePictureBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfilePictureController());
  }
}
