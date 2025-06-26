import 'package:customer_support_task/core/constants/app_constants.dart';
import 'package:customer_support_task/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MessageInputIconButton extends StatelessWidget {
  const MessageInputIconButton({
    super.key,
    required this.iconAsset,
    required this.onTap,
    this.tooltip,
  });

  final String iconAsset;
  final VoidCallback onTap;
  final String? tooltip;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          shadowColor: Colors.transparent,
          overlayColor: AppColors.accent,
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(0),
          backgroundColor: AppColors.white,
          elevation: 0,
        ),
        child: SvgPicture.asset(
          iconAsset,
          color: AppColors.salmon,
          width: AppConstants.mediumIconSize,
          height: AppConstants.mediumIconSize,
        ),
      ),
    );
  }
}
