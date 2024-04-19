import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hulk_transport/core/constants/colors.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final double? height;
  final double? width;
  final BorderRadiusGeometry? radius;
  final Color? bgColor;
  final Color? textColor;
  final Color? borderColor;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.bgColor,
    this.textColor,
    this.borderColor,
    this.height,
    this.width,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 45.h.h,
      width: width ?? 220
        ..w,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor ?? AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: radius ?? BorderRadius.circular(5.r),
          ),
          side: BorderSide(
            color: borderColor ?? AppColors.primaryColor,
          ),
        ),
        child: Text(
          text,
          style: AppTextStyles.ktbtnTextStyle.copyWith(
            color: textColor ?? Colors.white,
          ),
        ),
      ),
    );
  }
}
