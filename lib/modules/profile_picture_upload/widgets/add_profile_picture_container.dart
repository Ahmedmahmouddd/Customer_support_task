
import 'dart:io';

import 'package:customer_support_task/core/constants/app_constants.dart';
import 'package:customer_support_task/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AddProfilePictureContainer extends StatelessWidget {
  const AddProfilePictureContainer({
    super.key,
    required this.file,
    required this.loading,
    this.onTap,
  });

  final File? file;
  final bool loading;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        CircleAvatar(
          radius: AppConstants.largeRadius,
          backgroundColor: AppColors.beige,
          backgroundImage: file != null ? FileImage(file!) : null,
          child: file == null
              ? const Icon(Icons.person, size: AppConstants.extraLargeIconSize)
              : null,
        ),
        GestureDetector(
          onTap: onTap,
          child: CircleAvatar(
            radius: AppConstants.smallRadius,
            backgroundColor: AppColors.salmon,
            child: loading
                ? Padding(
                    padding: const EdgeInsets.all(AppConstants.smallPadding),
                    child: const CircularProgressIndicator(
                      color: AppColors.white,
                      strokeWidth: 4,
                    ),
                  )
                : const Icon(Icons.add, color: AppColors.white),
          ),
        ),
      ],
    );
  }
}
