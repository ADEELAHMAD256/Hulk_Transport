import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hulk_transport/core/constants/assets.dart';
import 'package:hulk_transport/core/constants/colors.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_drawer_child_row.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_image_widget.dart';

class CustomDrawer extends StatelessWidget {
  final void Function()? onTapSettings;
  final void Function()? onTapNotifications;
  final void Function()? onTapMyWallet;
  const CustomDrawer({
    super.key,
    required this.onTapSettings,
    required this.onTapNotifications,
    required this.onTapMyWallet,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            50.verticalSpace,

            /// Profile Area
            Padding(
              padding: EdgeInsets.only(left: 15.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: AppImages.imProfile,
                    height: 80.h,
                    width: 80.w,
                    fit: BoxFit.contain,
                  ),
                  10.horizontalSpace,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      10.verticalSpace,
                      Text(
                        "Eshan Ali",
                        style: AppTextStyles.ktBoldTextStyle.copyWith(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      5.verticalSpace,
                      Text(
                        "+92 798 8781 876",
                        style: AppTextStyles.ktBoldTextStyle.copyWith(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF0D1724).withOpacity(0.5),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            12.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Divider(
                color: const Color(0xFF0D1724).withOpacity(0.5),
              ),
            ),
            18.verticalSpace,
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Column(
                children: [
                  DrawerChildRow(
                    icPath: AppIcons.icRideSummary,
                    title: "Ride Summary",
                    onTap: () {},
                  ),
                  35.verticalSpace,
                  DrawerChildRow(
                    icPath: AppIcons.icMyWallet,
                    title: "My Wallet",
                    onTap: onTapMyWallet,
                  ),
                  35.verticalSpace,
                  DrawerChildRow(
                    icPath: AppIcons.icNotification,
                    title: "Notifications",
                    onTap: onTapNotifications,
                  ),
                  35.verticalSpace,
                  DrawerChildRow(
                    icPath: AppIcons.icSettings,
                    title: "Settings",
                    onTap: onTapSettings,
                  ),
                  35.verticalSpace,
                  DrawerChildRow(
                    icPath: AppIcons.icSignOut,
                    title: "Sign Out",
                    onTap: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
