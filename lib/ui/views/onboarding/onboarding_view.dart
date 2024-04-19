import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hulk_transport/core/constants/colors.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_button.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_image_widget.dart';
import 'package:stacked/stacked.dart';

import 'onboarding_viewmodel.dart';

class OnboardingView extends StackedView<OnboardingViewModel> {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    OnboardingViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: PageView.builder(
        controller: viewModel.pageController,
        itemCount: 6,
        onPageChanged: (index) {
          //
          //
        },
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.w),
            child: Column(
              children: [
                SizedBox(
                  height: 375.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomImageView(
                        imagePath: viewModel.onBoardingImage[index],
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                ),
                91.verticalSpace,
                Text(
                  viewModel.onBoardingTitle[index],
                  style: AppTextStyles.ktBoldTextStyle.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                14.verticalSpace,
                Text(
                  viewModel.onBoardingSubTitle[index],
                  textAlign: TextAlign.center,
                  style: AppTextStyles.ktRegularTextStyle.copyWith(
                    color: Colors.white.withOpacity(0.6),
                    fontWeight: FontWeight.w400,
                  ),
                ),

                // Dots
                if (index > 0 && index < 5) ...[
                  114.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(
                        4,
                        (indexD) => Container(
                          height: 7.h,
                          width: 7.w,
                          margin: EdgeInsets.only(left: 6.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: indexD == index - 1
                                ? Colors.white
                                : const Color.fromRGBO(255, 255, 255, 0.41),
                            // shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],

                if (index == viewModel.onBoardingImage.length - 1) ...[
                  127.verticalSpace,
                  CustomButton(
                    bgColor: Colors.white,
                    textColor: AppColors.primaryColor,
                    onPressed: () {
                      viewModel.navigateToSignupView();
                    },
                    text: "Get Started",
                  ),
                ],
                const Spacer(),

                // Buttons
                if (index == 0) ...[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.h),
                    child: SizedBox(
                      height: 200.h,
                      width: double.infinity,
                      child: Column(
                        children: [
                          CustomButton(
                            bgColor: Colors.white,
                            textColor: AppColors.primaryColor,
                            onPressed: () {
                              viewModel.switchPage();
                            },
                            text: "Arabic",
                          ),
                          15.verticalSpace,
                          CustomButton(
                            borderColor: Colors.white,
                            onPressed: () {},
                            text: "English",
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  OnboardingViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      OnboardingViewModel();
}
