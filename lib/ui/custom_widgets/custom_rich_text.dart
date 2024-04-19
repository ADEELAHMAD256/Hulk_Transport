import 'package:flutter/material.dart';
import 'package:hulk_transport/core/constants/colors.dart';

class CustomRichText extends StatelessWidget {
  final String fText;
  final String sText;
  final void Function()? onTap;
  const CustomRichText({
    super.key,
    required this.fText,
    required this.sText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          fText,
          style: AppTextStyles.ktMediumTextStyle.copyWith(
            color: AppColors.blackColor,
          ),
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            sText,
            style: AppTextStyles.ktMediumTextStyle.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
