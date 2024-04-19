import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hulk_transport/core/constants/assets.dart';
import 'package:hulk_transport/core/constants/colors.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_app_bar_widget.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_button.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_image_widget.dart';
import 'package:stacked/stacked.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import 'requestride_viewmodel.dart';

class RequestrideView extends StackedView<RequestrideViewModel> {
  const RequestrideView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    RequestrideViewModel viewModel,
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
                                        horizontal: 16.w, vertical: 14.h),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10.r),
                                          ),
                                          width: double.infinity,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                top: 20.h,
                                                left: 20.w,
                                                right: 20.w),
                                            child: Column(
                                              children: [
                                                60.verticalSpace,
                                                Text(
                                                  "Requesting Ride",
                                                  style: AppTextStyles
                                                      .ktBoldTextStyle
                                                      .copyWith(
                                                    fontSize: 20.sp,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                                45.verticalSpace,
                                                const StepProgressIndicator(
                                                  totalSteps: 4,
                                                  currentStep: 2,
                                                  size: 8,
                                                  padding: 0,
                                                  selectedColor:
                                                      AppColors.primaryColor,
                                                  unselectedColor:
                                                      Color(0xFFABB4C6),
                                                  roundedEdges:
                                                      Radius.circular(13),
                                                ),
                                                35.verticalSpace,
                                                CustomButton(
                                                  onPressed: () {
                                                    viewModel
                                                        .navigateToPickupView();
                                                  },
                                                  text: "Cancel Request",
                                                ),
                                                10.verticalSpace,
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
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
  RequestrideViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      RequestrideViewModel();
}
