import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hulk_transport/core/constants/assets.dart';
import 'package:hulk_transport/core/constants/colors.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_button.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_image_widget.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_oauth_button.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_rich_text.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_text_field.dart';
import 'package:stacked/stacked.dart';

import 'login_viewmodel.dart';

class LoginView extends StackedView<LoginViewModel> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoginViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
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
                    height: 600.h,
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
                            "Log In",
                            style: AppTextStyles.ktBoldTextStyle,
                            textAlign: TextAlign.center,
                          ),
                          40.verticalSpace,

                          CustomTextField(
                            text: "Email or Mobile",
                            controller: TextEditingController(),
                          ),
                          15.verticalSpace,
                          CustomTextField(
                            text: "Password",
                            controller: TextEditingController(),
                          ),

                          6.verticalSpace,

                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomRichText(
                                fText: "Forgot Password ? ",
                                sText: "Reset",
                                onTap: () {},
                              ),
                            ],
                          ),

                          ///

                          22.verticalSpace,

                          ///
                          ///
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 50.w),
                            child: CustomButton(
                              text: "Next",
                              onPressed: () {
                                // viewModel.navigateToSetNameScreen();
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
                            fText: "Create an account? ",
                            sText: "Sign Up",
                            onTap: () {
                              Navigator.pop(context);
                            },
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
  LoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginViewModel();
}
