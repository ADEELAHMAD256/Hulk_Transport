import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hulk_transport/core/constants/assets.dart';
import 'package:hulk_transport/core/constants/colors.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_image_widget.dart';

class CustomTopAppBar2 extends StatelessWidget {
  final void Function()? onTapForNotifications;
  final void Function()? onTapForDrawer;
  final String? rightMostIcons;
  const CustomTopAppBar2({
    super.key,
    required this.onTapForNotifications,
    this.onTapForDrawer,
    this.rightMostIcons,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomImageView(
              imagePath: AppIcons.icMenu,
              height: 24.h,
              width: 24.w,
              fit: BoxFit.contain,
              onTap: onTapForDrawer,
            ),
            20.horizontalSpace,
            CustomImageView(
              imagePath: AppIcons.icLogo2,
              height: 50.h,
              width: 150.w,
              fit: BoxFit.contain,
            ),
            5.horizontalSpace,
            CustomImageView(
              imagePath: rightMostIcons ?? AppIcons.icNotifications,
              height: 40.h,
              width: 40.w,
              fit: BoxFit.contain,
              onTap: onTapForNotifications,
            ),
          ],
        ),
      ],
    );
  }
}

class CustomTopAppBar extends StatelessWidget {
  final void Function()? onTapForNotifications;
  final void Function()? onTapForDrawer;
  final String? rightMostIcons;
  const CustomTopAppBar({
    super.key,
    required this.onTapForNotifications,
    this.onTapForDrawer,
    this.rightMostIcons,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomImageView(
              imagePath: AppIcons.icMenu,
              height: 24.h,
              width: 24.w,
              fit: BoxFit.contain,
              onTap: onTapForDrawer,
            ),
            20.horizontalSpace,
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: AppTextStyles.kthintTextStyle.copyWith(
                    color: const Color(0xFFFFF9F9),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(
                      right: 16.w,
                      top: 10.h,
                      bottom: 10.h,
                    ),
                    child: CustomImageView(
                      imagePath: AppIcons.icSearch,
                      height: 10.h,
                      width: 10.w,
                      fit: BoxFit.contain,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100.r),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: const Color(0xFF333333),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 10.h,
                  ),
                ),
              ),
            ),
            5.horizontalSpace,
            CustomImageView(
              imagePath: rightMostIcons ?? AppIcons.icNotifications,
              height: 40.h,
              width: 40.w,
              fit: BoxFit.contain,
              onTap: onTapForNotifications,
            ),
          ],
        ),
      ],
    );
  }
}
