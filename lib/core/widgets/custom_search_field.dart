
import 'package:customer_support_task/core/constants/app_constants.dart';
import 'package:customer_support_task/core/theme/app_colors.dart';
import 'package:customer_support_task/core/theme/app_text_styles.dart';
import 'package:customer_support_task/generated/l10n.dart';
import 'package:flutter/material.dart';
class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
    required this.controller,
    required this.onChanged,
  });

  final TextEditingController controller;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConstants.horizontalPadding,
      ),
      child: SizedBox(
        height: 40,
        child: TextFormField(
          controller: controller,
          onChanged: onChanged,
          cursorColor: AppColors.salmon,
          cursorWidth: 2,
          style: AppTextStyles.terracottaSemiBoldBody,
          decoration: InputDecoration(
            suffixIcon: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.salmon,
                  borderRadius: BorderRadius.circular(80),
                ),
                child: Icon(
                  controller.text.isNotEmpty
                      ? Icons.close
                      : Icons.search,
                  color: Colors.white,
                  size: AppConstants.extraSmallIconSize,
                ),
              ),
            ),
            fillColor: AppColors.beige,
            hintText: S.of(context).search,
            filled: true,
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            hintStyle: AppTextStyles.beigeSemiBoldBody,
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
          ),
        ),
      ),
    );
  }
}
