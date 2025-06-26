import 'package:customer_support_task/core/constants/app_constants.dart';
import 'package:customer_support_task/core/theme/app_colors.dart';
import 'package:customer_support_task/core/theme/app_text_styles.dart';
import 'package:customer_support_task/generated/l10n.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.myController,
    required this.hint,
    required this.obscureField,
    required this.initialObscureText,
  });

  final TextEditingController myController;
  final String hint;
  final bool obscureField;
  final bool initialObscureText;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool obscureText;

  @override
  void initState() {
    super.initState();
    obscureText = widget.initialObscureText; // Initialize the state
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return "${widget.hint} ${S.of(context).isRequired}";
          }
          return null;
        },
        obscuringCharacter: r'*',
        obscureText: obscureText,
        controller: widget.myController,
        cursorColor: AppColors.salmon,
        cursorWidth: 2,
        style: AppTextStyles.blackBody,
        decoration: InputDecoration(
          suffixIcon: widget.obscureField == true
              ? Padding(
                  padding: EdgeInsets.only(right: AppConstants.smallPadding),
                  child: GestureDetector(
                    onTap: () {
                      obscureText = !obscureText;
                      setState(() {});
                    },
                    child: obscureText == false
                        ? const Icon(
                            Icons.visibility_outlined,
                            color: AppColors.salmon,
                          )
                        : const Icon(
                            Icons.visibility_off_outlined,
                            color: AppColors.salmon,
                          ),
                  ),
                )
              : null,
          fillColor: AppColors.white,
          hintText: widget.hint,
          filled: true,
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          hintStyle: AppTextStyles.greyBody,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
        ),
      ),
    );
  }
}
