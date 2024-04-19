import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hulk_transport/core/constants/assets.dart';
import 'package:hulk_transport/core/constants/colors.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_app_bar_widget.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_button.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_text_field.dart';
import 'package:stacked/stacked.dart';

import 'changepassword_viewmodel.dart';

class ChangepasswordView extends StackedView<ChangepasswordViewModel> {
  const ChangepasswordView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ChangepasswordViewModel viewModel,
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
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              36.verticalSpace,
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Change Password",
                                  style: AppTextStyles.ktBoldTextStyle.copyWith(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              27.verticalSpace,
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 17.w,
                                  right: 23.w,
                                ),
                                child: Column(
                                  children: [
                                    CustomTextField(
                                      controller: TextEditingController(),
                                      text: "Old Password",
                                    ),
                                    10.verticalSpace,
                                    CustomTextField(
                                      controller: TextEditingController(),
                                      text: "New Password",
                                    ),
                                    10.verticalSpace,
                                    CustomTextField(
                                      controller: TextEditingController(),
                                      text: "Confirm New Password",
                                    ),
                                  ],
                                ),
                              ),
                              320.verticalSpace,
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 50.w),
                                child: CustomButton(
                                  onPressed: () {},
                                  text: "Change Password",
                                ),
                              ),
                              20.verticalSpace,
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
  ChangepasswordViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ChangepasswordViewModel();
}
