import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hulk_transport/core/constants/assets.dart';
import 'package:hulk_transport/core/constants/colors.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_app_bar_widget.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_drawer_widget.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_image_widget.dart';
import 'package:stacked/stacked.dart';

import 'calling_viewmodel.dart';

class CallingView extends StackedView<CallingViewModel> {
  const CallingView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CallingViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      key: viewModel.scaffoldKey,
      drawer: CustomDrawer(
        onTapSettings: () {},
        onTapMyWallet: () {},
        onTapNotifications: () {},
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage(
              AppImages.imBGredWave,
            ),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5),
              BlendMode.darken,
            ),
          ),
        ),
        child: SafeArea(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
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
                SizedBox(
                  height: 650.h,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.3),
                          width: 1.0,
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.white.withOpacity(0.0),
                            Colors.white.withOpacity(0.2),
                          ],
                          stops: const [0.0, 1.0],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.04),
                            offset: const Offset(-5, -5),
                            blurRadius: 4,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: AppImages.imProfile,
                                    height: 100.h,
                                    width: 100.w,
                                    fit: BoxFit.contain,
                                  ),
                                  20.verticalSpace,
                                  Text(
                                    "Rayan Rai",
                                    style:
                                        AppTextStyles.ktBoldTextStyle.copyWith(
                                      color: Colors.white,
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  6.verticalSpace,
                                  Text(
                                    "Calling . . .",
                                    style:
                                        AppTextStyles.ktBoldTextStyle.copyWith(
                                      color: Colors.white,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5.r),
                                boxShadow: const [
                                  BoxShadow(
                                    offset: Offset(0, -10),
                                    blurRadius: 30,
                                    spreadRadius: 0,
                                    color: Color.fromRGBO(0, 0, 0, 0.06),
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CustomImageView(
                                    imagePath: AppIcons.icCalling,
                                    height: 67.h,
                                    width: 67.w,
                                    fit: BoxFit.contain,
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                  30.verticalSpace,
                                ],
                              ),
                            ),
                          ),
                        ],
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
  CallingViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CallingViewModel();
}
