import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hulk_transport/core/constants/assets.dart';
import 'package:hulk_transport/core/constants/colors.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_app_bar_widget.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_button.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_image_widget.dart';
import 'package:stacked/stacked.dart';

import 'ridedetailes_viewmodel.dart';

class RidedetailesView extends StackedView<RidedetailesViewModel> {
  const RidedetailesView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    RidedetailesViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
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
                      // viewModel.navigateToNotificationsView();
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
                          borderRadius: BorderRadius.circular(13.r),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(13.r),
                                    child: CustomImageView(
                                      imagePath: AppImages.imMap,
                                      fit: BoxFit.cover,
                                      height: 650.h,
                                      width: 350.w,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10.w, vertical: 14.h),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                      ),
                                      width: double.infinity,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: 12.h, left: 20.w, right: 20.w),
                                        child: RideDetailesWidget(
                                          viewModel: viewModel,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
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
  RidedetailesViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      RidedetailesViewModel();
}

class RideDetailesWidget extends StatelessWidget {
  final RidedetailesViewModel viewModel;
  const RideDetailesWidget({
    super.key,
    required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //
        20.verticalSpace,
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.blackColor,
                borderRadius: BorderRadius.circular(100.r),
              ),
              height: 60.h,
              width: 60.w,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 1.h),
                child: CustomImageView(
                  imagePath: AppImages.imProfile,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            11.horizontalSpace,
            Text(
              "Rayan Rai",
              style: AppTextStyles.ktBoldTextStyle.copyWith(
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        Text(
          "Cape Town City",
          style: AppTextStyles.ktBoldTextStyle.copyWith(
            fontSize: 10.sp,
            color: const Color(0xFF0D1724).withOpacity(0.6),
            fontWeight: FontWeight.w700,
          ),
        ),

        Stack(
          children: [
            Column(
              children: [
                8.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF1CB802).withOpacity(0.12),
                        borderRadius: BorderRadius.circular(100.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 10.h),
                        child: Center(
                          child: Text(
                            "Driver Arrived",
                            style: AppTextStyles.ktMediumTextStyle.copyWith(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFF1CB802),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFFF6900).withOpacity(0.12),
                        borderRadius: BorderRadius.circular(100.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 10.h),
                        child: Center(
                          child: Text(
                            "Finished Ride",
                            style: AppTextStyles.ktMediumTextStyle.copyWith(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFFFF6900),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                ...List.generate(
                  5,
                  (index) => CustomImageView(
                    color: Colors.yellow,
                    margin: EdgeInsets.only(right: 2.w),
                    imagePath: index < 3
                        ? AppIcons.icStartFill
                        : AppIcons.icStarUnFill,
                    height: 14.h,
                    width: 14.w,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ],
        ),

        24.verticalSpace,
        //
        Divider(
          color: const Color(0xFF000000).withOpacity(0.2),
          thickness: 1,
        ),
        10.verticalSpace,
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  viewModel.navigateToChattingView();
                },
                child: const ContactTypeWidget(
                  icPath: AppIcons.icMessage,
                  text: "Message Driver",
                  isCall: false,
                ),
              ),
              Container(
                width: 1.w,
                color: const Color(0xFF000000).withOpacity(0.2),
              ),
              InkWell(
                onTap: () {
                  viewModel.navigateToCallingView();
                },
                child: const ContactTypeWidget(
                  icPath: AppIcons.icCall,
                  text: "Call Driver",
                  isCall: true,
                ),
              ),
            ],
          ),
        ),
        20.verticalSpace,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
          child: CustomButton(
            onPressed: () {},
            text: "Cancel Ride",
          ),
        ),
      ],
    );
  }
}

class ContactTypeWidget extends StatelessWidget {
  final String icPath;
  final String text;
  final bool isCall;
  const ContactTypeWidget({
    super.key,
    required this.icPath,
    required this.text,
    required this.isCall,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.h),
      child: Row(
        children: [
          CustomImageView(
            imagePath: icPath,
            height: isCall ? 22.h : 24.h,
            width: isCall ? 22.w : 24.w,
            fit: BoxFit.contain,
          ),
          6.horizontalSpace,
          Text(
            text,
            style: AppTextStyles.ktRegularTextStyle.copyWith(
              fontSize: 14.sp,
              letterSpacing: 0.28.sp,
              fontFamily: "Roboto",
            ),
          )
        ],
      ),
    );
  }
}
