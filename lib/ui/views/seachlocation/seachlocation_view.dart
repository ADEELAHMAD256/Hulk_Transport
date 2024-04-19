import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hulk_transport/core/constants/assets.dart';
import 'package:hulk_transport/core/constants/colors.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_app_bar_widget.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_drawer_widget.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_image_widget.dart';
import 'package:stacked/stacked.dart';

import 'seachlocation_viewmodel.dart';

class SeachlocationView extends StackedView<SeachlocationViewModel> {
  const SeachlocationView({
    Key? key,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SeachlocationViewModel viewModel,
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
                    rightMostIcons: AppIcons.icPickLocation,
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
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                20.verticalSpace,
                                Text(
                                  "Show Result",
                                  style: AppTextStyles.ktBoldTextStyle.copyWith(
                                    color: Colors.white,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                10.verticalSpace,
                                const SearchLocationShowResultWidget(
                                  areaName: "Al Jaddaf Dubai - UAE",
                                  subAddress:
                                      "Al Jaddaf - Jaddaf Waterfront - Dubai - UAE",
                                ),
                                12.verticalSpace,
                                const SearchLocationShowResultWidget(
                                  areaName: "Creek Tower",
                                  subAddress: "Creek Tower, UAE",
                                ),
                                12.verticalSpace,
                                const SearchLocationShowResultWidget(
                                  areaName: "Barsha UAE",
                                  subAddress: "Al Barsha Stop, Dubai, UAE",
                                ),
                                // 12.verticalSpace,
                                20.verticalSpace,
                              ],
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
  SeachlocationViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SeachlocationViewModel();
}

class SearchLocationShowResultWidget extends StatelessWidget {
  final String areaName;
  final String subAddress;
  const SearchLocationShowResultWidget({
    super.key,
    required this.areaName,
    required this.subAddress,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: AppIcons.icLocation,
              height: 24.h,
              width: 24.w,
              fit: BoxFit.contain,
            ),
            6.horizontalSpace,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  areaName,
                  style: AppTextStyles.ktRegularTextStyle.copyWith(
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                3.verticalSpace,
                Text(
                  subAddress,
                  style: AppTextStyles.ktRegularTextStyle.copyWith(
                    color: Colors.white,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ],
        ),
        5.verticalSpace,
        const Divider(
          color: Color(0xFFD9D9D9),
          thickness: 1,
        ),
      ],
    );
  }
}
