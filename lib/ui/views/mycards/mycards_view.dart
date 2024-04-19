import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hulk_transport/core/constants/assets.dart';
import 'package:hulk_transport/core/constants/colors.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_app_bar_widget.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_button.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_image_widget.dart';
import 'package:stacked/stacked.dart';

import 'mycards_viewmodel.dart';

class MycardsView extends StackedView<MycardsViewModel> {
  const MycardsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MycardsViewModel viewModel,
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
                                  "My Cards",
                                  style: AppTextStyles.ktBoldTextStyle.copyWith(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              60.verticalSpace,
                              CustomImageView(
                                imagePath: AppImages.imCreditCard,
                                height: 200.h,
                                width: 340.w,
                                fit: BoxFit.contain,
                              ),
                              CustomImageView(
                                imagePath: AppImages.imDebCard,
                                height: 200.h,
                                width: 290.w,
                                fit: BoxFit.contain,
                              ),
                              50.verticalSpace,
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 65.w),
                                child: CustomButton(
                                  onPressed: () {
                                    viewModel.navigateToAddcardView();
                                  },
                                  text: "Pay Now",
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
  MycardsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MycardsViewModel();
}
