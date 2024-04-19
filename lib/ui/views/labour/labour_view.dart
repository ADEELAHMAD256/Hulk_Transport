import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hulk_transport/app/app.router.dart';
import 'package:hulk_transport/core/constants/assets.dart';
import 'package:hulk_transport/core/constants/colors.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_app_bar_widget.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_button.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_check_box.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_drawer_widget.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_image_widget.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_text_field.dart';
import 'package:stacked/stacked.dart';

import 'labour_viewmodel.dart';

class LabourView extends StackedView<LabourViewModel> {
  const LabourView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LabourViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      key: viewModel.scaffoldKey,
      drawer: CustomDrawer(
        onTapSettings: () => viewModel.navigateToSettingsView(),
        onTapMyWallet: () => viewModel.navigateToMyCardsView(),
        onTapNotifications: () => viewModel.navigateToNotificationsView(),
      ),
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
                    onTapForNotifications: () {},
                    onTapForDrawer: () {
                      viewModel.scaffoldKey.currentState?.openDrawer();
                    },
                  ),
                ),
                20.verticalSpace,

                ///
                SingleChildScrollView(
                  child: SizedBox(
                    height: 660.h,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(24.r),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(24.r),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.2),
                                border: Border.all(
                                  color:
                                      const Color.fromRGBO(255, 255, 255, 0.20),
                                ),
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    19.verticalSpace,
                                    Padding(
                                      padding: EdgeInsets.only(left: 20.w),
                                      child: Text(
                                        "Labour",
                                        style: AppTextStyles.ktBoldTextStyle
                                            .copyWith(
                                          color: const Color(0xFFFFFFFF),
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    10.verticalSpace,
                                    Padding(
                                      padding: EdgeInsets.only(left: 20.w),
                                      child: Row(
                                        children: [
                                          Row(
                                            children: [
                                              CustomImageView(
                                                imagePath: AppIcons.icPlus,
                                                height: 24.h,
                                                width: 24.w,
                                                fit: BoxFit.contain,
                                              ),
                                              10.horizontalSpace,
                                              Text(
                                                "01",
                                                style: AppTextStyles
                                                    .ktBoldTextStyle
                                                    .copyWith(
                                                  color:
                                                      const Color(0xFFFFFFFF),
                                                  fontSize: 18.sp,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              10.horizontalSpace,
                                              CustomImageView(
                                                imagePath: AppIcons.icMinus,
                                                height: 24.h,
                                                width: 24.w,
                                                fit: BoxFit.contain,
                                              ),
                                            ],
                                          ),
                                          30.horizontalSpace,
                                          Row(
                                            children: [
                                              ...List.generate(
                                                5,
                                                (index) => CustomImageView(
                                                  imagePath: index < 3
                                                      ? AppIcons.icAvatarP
                                                      : AppIcons.icAvatarU,
                                                  height: 40.h,
                                                  width: 15.w,
                                                  fit: BoxFit.contain,
                                                  margin: EdgeInsets.only(
                                                      left: 7.w),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    12.verticalSpace,
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 10.w, right: 30.w),
                                      child: CustomTextField(
                                        controller: TextEditingController(),
                                        text: "Weight (Kg)",
                                      ),
                                    ),
                                    27.verticalSpace,
                                    Padding(
                                      padding: EdgeInsets.only(left: 20.w),
                                      child: Text(
                                        "Wrapping",
                                        style: AppTextStyles.ktBoldTextStyle
                                            .copyWith(
                                          color: const Color(0xFFFFFFFF),
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    6.verticalSpace,
                                    //

                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16.w),
                                      child: const Column(
                                        children: [
                                          CheckBoxWithText(text: "Bubble"),
                                          CheckBoxWithText(text: "Foam"),
                                          CheckBoxWithText(text: "Paper"),
                                          CheckBoxWithText(text: "Roll up"),
                                          CheckBoxWithText(text: "Box"),
                                        ],
                                      ),
                                    ),

                                    6.verticalSpace,
                                    Padding(
                                      padding: EdgeInsets.only(left: 20.w),
                                      child: Text(
                                        "Measure Objects",
                                        style: AppTextStyles.ktBoldTextStyle
                                            .copyWith(
                                          color: const Color(0xFFFFFFFF),
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    14.verticalSpace,
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 25.w),
                                      child: Text(
                                        "Height x Width x Length (cm)",
                                        style: AppTextStyles.ktMediumTextStyle
                                            .copyWith(
                                          color: const Color.fromRGBO(
                                              255, 255, 255, 0.87),
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    6.verticalSpace,

                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20.w),
                                      child: CustomTextField(
                                        controller: TextEditingController(),
                                        text: "Height 35 cm , Width 70 cm",
                                        suffixIcon: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15.w, vertical: 15.w),
                                          child: CustomImageView(
                                            imagePath: AppIcons.icCamera,
                                            height: 24.h,
                                            width: 24.w,
                                            fit: BoxFit.contain,
                                            onTap: () {
                                              viewModel.navigationService
                                                  .navigateToSelectdateView();
                                            },
                                          ),
                                        ),
                                      ),
                                    ),

                                    // 10.verticalSpace,

                                    // Padding(
                                    //   padding: EdgeInsets.symmetric(
                                    //       horizontal: 25.w),
                                    //   child: Text(
                                    //     "Height x Width x Length (cm)",
                                    //     style: AppTextStyles.ktMediumTextStyle
                                    //         .copyWith(
                                    //       color: const Color.fromRGBO(
                                    //           255, 255, 255, 0.87),
                                    //       fontSize: 14.sp,
                                    //       fontWeight: FontWeight.w500,
                                    //     ),
                                    //   ),
                                    // ),
                                    // 6.verticalSpace,

                                    // Padding(
                                    //   padding: EdgeInsets.symmetric(
                                    //       horizontal: 20.w),
                                    //   child: CustomTextField(
                                    //     controller: TextEditingController(),
                                    //     text: "Height 35 cm , Width 70 cm",
                                    //     suffixIcon: Padding(
                                    //       padding: EdgeInsets.symmetric(
                                    //           horizontal: 15.w, vertical: 15.w),
                                    //       child: CustomImageView(
                                    //         imagePath: AppIcons.icCamera,
                                    //         height: 24.h,
                                    //         width: 24.w,
                                    //         fit: BoxFit.contain,
                                    //       ),
                                    //     ),
                                    //   ),
                                    // ),

                                    20.verticalSpace,

                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 50.w),
                                      child: CustomButton(
                                        bgColor: Colors.transparent,
                                        borderColor: Colors.white,
                                        onPressed: () {
                                          // viewModel.navigateToReviewsView();
                                          viewModel.navigateToRequestrideView();
                                        },
                                        text: "+ Add more objects to measure",
                                      ),
                                    ),

                                    //

                                    40.verticalSpace,
                                  ],
                                ),
                              ),
                            ),
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
  LabourViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LabourViewModel();
}

class CheckBoxWithText extends StatelessWidget {
  final String text;
  const CheckBoxWithText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomCheckBox(
          kFillColor: Colors.white,
        ),
        Text(
          text,
          style: AppTextStyles.ktRegularTextStyle.copyWith(
            color: const Color.fromRGBO(255, 255, 255, 0.87),
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
