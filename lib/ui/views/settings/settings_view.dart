import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hulk_transport/core/constants/assets.dart';
import 'package:hulk_transport/core/constants/colors.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_app_bar_widget.dart';
import 'package:stacked/stacked.dart';

import 'settings_viewmodel.dart';

class SettingsView extends StackedView<SettingsViewModel> {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SettingsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              AppImages.imBGredWave,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: CustomTopAppBar(
                    onTapForNotifications: () {
                      viewModel.navigateToNotificationsView();
                    },
                  ),
                ),

                20.verticalSpace,

                ///
                SingleChildScrollView(
                  child: SizedBox(
                    height: 650.h,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              36.verticalSpace,
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Settings",
                                  style: AppTextStyles.ktBoldTextStyle.copyWith(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              20.verticalSpace,
                              SettingsChildRow(
                                text: "My Profile",
                                onTap: () => viewModel.navigateToProfileView(),
                              ),
                              SettingsChildRow(
                                text: "App Passcode",
                                onTap: () {
                                  viewModel.navigateToChangepasswordView();
                                },
                              ),
                              SettingsChildRow(
                                text: "Terms of Use",
                                onTap: () {},
                              ),
                              SettingsChildRow(
                                text: "Privacy Policy",
                                onTap: () {},
                              ),
                              SettingsChildRow(
                                text: "Notifications",
                                onTap: () {},
                              ),
                              SettingsChildRow(
                                text: "Share",
                                onTap: () {},
                              ),
                              33.verticalSpace,
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  SettingsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SettingsViewModel();
}

class SettingsChildRow extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const SettingsChildRow({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFF8F8F8),
          borderRadius: BorderRadius.circular(5.r),
        ),
        padding: const EdgeInsets.all(18),
        margin: EdgeInsets.symmetric(horizontal: 12.w, vertical: 5.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: AppTextStyles.ktBoldTextStyle.copyWith(
                fontSize: 13.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 18.sp,
              color: AppColors.primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
