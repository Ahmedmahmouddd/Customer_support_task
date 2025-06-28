import 'package:customer_support_task/core/widgets/custom_appbar.dart';
import 'package:customer_support_task/generated/l10n.dart';
import 'package:customer_support_task/modules/profile_picture_upload/controllers/profile_picture_upload_controller.dart';
import 'package:customer_support_task/modules/profile_picture_upload/widgets/add_profile_picture_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePictureUploadView extends GetView<ProfilePictureController> {
  const ProfilePictureUploadView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: S.of(context).profilePicture,
        subtitle: S.of(context).uploadYouProfilePicture,
      ),
      body: Center(
        child: Obx(() {
          return AddProfilePictureContainer(
            onTap: controller.isloading.value
                ? null
                : () => controller.showImageSourceDialog(context),
            file: controller.imageFile.value,
            loading: controller.isloading.value,
          );
        }),
      ),
    );
  }
}
