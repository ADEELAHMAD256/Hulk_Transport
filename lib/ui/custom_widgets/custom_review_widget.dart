import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hulk_transport/core/constants/assets.dart';
import 'package:hulk_transport/core/constants/colors.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_image_widget.dart';

class ReviewWidget extends StatelessWidget {
  final int fillStars;
  final String reviewerName;
  final String reviewTime;
  final String reviewDescription;

  const ReviewWidget({
    super.key,
    required this.fillStars,
    required this.reviewerName,
    required this.reviewTime,
    required this.reviewDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF7F7F7),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  reviewerName,
                  style: AppTextStyles.ktBoldTextStyle.copyWith(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  reviewTime,
                  style: AppTextStyles.ktRegularTextStyle.copyWith(
                    fontSize: 10.sp,
                    color: AppColors.darkGreyColor,
                  ),
                )
              ],
            ),
            12.verticalSpace,
            Row(
              children: [
                ...List.generate(
                  5,
                  (index) => CustomImageView(
                    margin: EdgeInsets.only(right: 5.w),
                    imagePath: index < fillStars
                        ? AppIcons.icStartFill
                        : AppIcons.icStarUnFill,
                    height: 14.h,
                    width: 14.w,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            8.verticalSpace,
            Text(
              reviewDescription,
              style: AppTextStyles.ktRegularTextStyle.copyWith(
                fontSize: 12.sp,
                color: AppColors.blackColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
