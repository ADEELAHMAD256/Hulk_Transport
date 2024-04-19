import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hulk_transport/core/constants/assets.dart';
import 'package:hulk_transport/core/constants/colors.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_app_bar_widget.dart';
import 'package:stacked/stacked.dart';

import 'notifications_viewmodel.dart';

class NotificationsView extends StackedView<NotificationsViewModel> {
  const NotificationsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    NotificationsViewModel viewModel,
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
                                  "Notifications",
                                  style: AppTextStyles.ktBoldTextStyle.copyWith(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              36.verticalSpace,
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.w),
                                child: const NotificationWidget(
                                  title: "Notification",
                                  time: "10 min. Ago",
                                  description:
                                      "Your order has been placed successfully. You will receive a confirmation email shortly.",
                                ),
                              ),
                              5.verticalSpace,
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.w),
                                child: const NotificationWidget(
                                  title: "Notification",
                                  time: "10 min. Ago",
                                  description:
                                      "Your order has been placed successfully. You will receive a confirmation email shortly.",
                                ),
                              ),
                              5.verticalSpace,
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.w),
                                child: const NotificationWidget(
                                  title: "Notification",
                                  time: "10 min. Ago",
                                  description:
                                      "Your order has been placed successfully. You will receive a confirmation email shortly.",
                                ),
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
  NotificationsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      NotificationsViewModel();
}

class NotificationWidget extends StatelessWidget {
  final String title;
  final String time;
  final String description;
  const NotificationWidget({
    super.key,
    required this.title,
    required this.time,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: AppTextStyles.ktBoldTextStyle.copyWith(
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              time,
              style: AppTextStyles.ktRegularTextStyle.copyWith(
                fontSize: 10.sp,
                color: AppColors.darkGreyColor,
              ),
            ),
          ],
        ),
        5.verticalSpace,
        Text(
          description,
          style: AppTextStyles.ktRegularTextStyle.copyWith(
            fontSize: 10.sp,
            color: AppColors.darkGreyColor,
          ),
        ),
        5.verticalSpace,
        const Divider(
          color: AppColors.darkGreyColor,
        ),
      ],
    );
  }
}
