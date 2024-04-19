import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hulk_transport/core/constants/colors.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_image_widget.dart';

class DrawerChildRow extends StatelessWidget {
  final String icPath;
  final String title;
  final void Function()? onTap;
  const DrawerChildRow({
    super.key,
    required this.icPath,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: icPath,
            height: 24.h,
            width: 24.w,
            fit: BoxFit.contain,
          ),
          10.horizontalSpace,
          Text(
            title,
            style: AppTextStyles.ktBoldTextStyle.copyWith(
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
