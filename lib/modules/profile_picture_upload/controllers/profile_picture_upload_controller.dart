import 'dart:io';
import 'package:customer_support_task/core/theme/app_colors.dart';
import 'package:customer_support_task/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';

class ProfilePictureController extends GetxController {
  final picker = ImagePicker();
  final Rx<File?> imageFile = Rx<File?>(null);
  final RxBool isloading = false.obs;
  final RxString imageUrl = ''.obs;

  Future<void> pickImage(ImageSource source) async {
    final XFile? pickedFile = await ImagePicker().pickImage(
      source: source,
      imageQuality: 80,
    );
    if (pickedFile != null) {
      imageFile.value = File(pickedFile.path);
      await uploadImageToFirebase();
    }
  }

  Future<void> uploadImageToFirebase() async {
    final file = imageFile.value;
    if (file == null) return;

    isloading.value = true;
    try {
      final fileName = basename(file.path);
      final ref = FirebaseStorage.instance.ref().child(
        'profile_pictures/$fileName',
      );
      await ref.putFile(file);
      final downloadUrl = await ref.getDownloadURL();
      imageUrl.value = downloadUrl;
      Get.snackbar("Success", "Image uploaded successfully.");
    } catch (e) {
      Get.snackbar("Error", "Failed to upload: $e");
    } finally {
      isloading.value = false;
    }
  }

  void showImageSourceDialog(BuildContext context) {
    Get.bottomSheet(
      SafeArea(
        child: Container(
          color: AppColors.white,
          child: Wrap(
            children: [
              ListTile(
                leading: SvgPicture.asset("assets/icons/camera.svg"),
                title: Text(S.of(context).camera),
                onTap: () {
                  Get.back();
                  pickImage(ImageSource.camera);
                },
              ),
              ListTile(
                leading: SvgPicture.asset("assets/icons/gallery.svg"),
                title: Text(S.of(context).gallery),
                onTap: () {
                  Get.back();
                  pickImage(ImageSource.gallery);
                },
              ),
            ],
          ),
        ),
      ),
      isScrollControlled: true,
      backgroundColor: AppColors.white,
    );
  }
}
