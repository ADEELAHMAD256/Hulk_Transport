import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hulk_transport/core/constants/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String text;
  final Widget? suffixIcon;
  const CustomTextField({
    super.key,
    required this.controller,
    required this.text,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: text,
        hintStyle: AppTextStyles.kthintTextStyle,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5.r),
          ),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: AppColors.textFieldColor,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 20,
        ),
        suffixIcon: suffixIcon,
      ),
    );
  }
}
