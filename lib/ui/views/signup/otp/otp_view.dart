import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hulk_transport/core/constants/assets.dart';
import 'package:hulk_transport/core/constants/colors.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_button.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_check_box.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_image_widget.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_oauth_button.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_pinput.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_rich_text.dart';
import 'package:hulk_transport/ui/views/signup/signup_view.dart';
import 'package:stacked/stacked.dart';

import 'otp_viewmodel.dart';

class OtpView extends StackedView<OtpViewModel> {
  const OtpView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    OtpViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        // physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                CustomImageView(
                  imagePath: AppImages.imBgCar,
                  fit: BoxFit.fitWidth,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 225.h),
                  child: Container(
                    width: double.infinity,
                    height: 660.h,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(42),
                        topRight: Radius.circular(42),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 25.w,
                        right: 25.w,
                      ),
                      child: Column(
                        children: [
                          28.verticalSpace,
                          Text(
                            "Enter OTP Code",
                            style: AppTextStyles.ktBoldTextStyle,
                            textAlign: TextAlign.center,
                          ),
                          35.verticalSpace,

                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 42.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CustomPinPut(
                                  isFilled: viewModel.isSelected[0],
                                  onChanged: (value) {
                                    if (value.isNotEmpty) {
                                      FocusScope.of(context).nextFocus();
                                      viewModel.onPinChanged(value, 0);
                                    } else {
                                      FocusScope.of(context).previousFocus();
                                      viewModel.onPinChanged(value, 0);
                                    }
                                  },
                                ),
                                CustomPinPut(
                                  isFilled: viewModel.isSelected[1],
                                  onChanged: (value) {
                                    if (value.isNotEmpty) {
                                      FocusScope.of(context).nextFocus();
                                      viewModel.onPinChanged(value, 1);
                                    } else {
                                      FocusScope.of(context).previousFocus();
                                      viewModel.onPinChanged(value, 1);
                                    }
                                  },
                                ),
                                CustomPinPut(
                                  isFilled: viewModel.isSelected[2],
                                  onChanged: (value) {
                                    if (value.isNotEmpty) {
                                      FocusScope.of(context).nextFocus();
                                      viewModel.onPinChanged(value, 2);
                                    } else {
                                      FocusScope.of(context).previousFocus();
                                      viewModel.onPinChanged(value, 2);
                                    }
                                  },
                                ),
                                CustomPinPut(
                                  isFilled: viewModel.isSelected[3],
                                  onChanged: (value) {
                                    if (value.isNotEmpty) {
                                      FocusScope.of(context).nextFocus();
                                      viewModel.onPinChanged(value, 3);
                                    } else {
                                      FocusScope.of(context).previousFocus();
                                      viewModel.onPinChanged(value, 3);
                                    }
                                  },
                                ),
                              ],
                            ),
                          ),
                          26.verticalSpace,
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 48.w),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "Sent Again",
                                style:
                                    AppTextStyles.ktRegularTextStyle.copyWith(
                                  color: AppColors.primaryColor,
                                ),
                              ),
                            ),
                          ),
                          25.verticalSpace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const CustomCheckBox(),
                              CustomRichText(
                                fText: "I agreed to the ",
                                sText: "Terms & Conditions",
                                onTap: () {},
                              ),
                            ],
                          ),

                          22.verticalSpace,

                          ///
                          ///
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 50.w),
                            child: CustomButton(
                              text: "Next",
                              onPressed: () {
                                viewModel.navigateToSetPassword();
                              },
                            ),
                          ),

                          60.verticalSpace,

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath: AppIcons.icWaveLeft,
                                width: 40,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 18),
                                child: Text(
                                  "Or Continue With",
                                  style: AppTextStyles.ktMediumTextStyle,
                                ),
                              ),
                              CustomImageView(
                                imagePath: AppIcons.icWaveRight,
                                width: 40,
                              ),
                            ],
                          ),

                          60.verticalSpace,

                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                OAuthCustomButton(
                                  icPath: AppIcons.icGoogle,
                                ),
                                OAuthCustomButton(
                                  icPath: AppIcons.icApple,
                                ),
                                OAuthCustomButton(
                                  icPath: AppIcons.icFaceBook,
                                ),
                              ],
                            ),
                          ),

                          60.verticalSpace,
                          CustomRichText(
                            fText: "Already have an Account ? ",
                            sText: "Login",
                            onTap: () {},
                          ),

                          20.verticalSpace,
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  OtpViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      OtpViewModel();
}
