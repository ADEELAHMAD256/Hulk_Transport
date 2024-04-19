import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hulk_transport/core/constants/assets.dart';
import 'package:hulk_transport/core/constants/colors.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_app_bar_widget.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_button.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_image_widget.dart';
import 'package:stacked/stacked.dart';

import 'profile_viewmodel.dart';

class ProfileView extends StackedView<ProfileViewModel> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ProfileViewModel viewModel,
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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              36.verticalSpace,
                              Text(
                                "My Profile",
                                style: AppTextStyles.ktBoldTextStyle.copyWith(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              25.verticalSpace,
                              CustomImageView(
                                imagePath: AppImages.imProfile,
                                height: 170.h,
                                width: 170.w,
                                fit: BoxFit.contain,
                              ),
                              20.verticalSpace,
                              Text(
                                "Rayan Rai",
                                style: AppTextStyles.ktBoldTextStyle.copyWith(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              6.verticalSpace,
                              Text(
                                "Cape Town Driver",
                                style:
                                    AppTextStyles.ktRegularTextStyle.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color:
                                      const Color(0xFF0D1724).withOpacity(0.5),
                                ),
                              ),
                              20.verticalSpace,
                              Padding(
                                padding:
                                    EdgeInsets.only(left: 20.w, right: 30.w),
                                child: Column(
                                  children: [
                                    const CustomTextField02(
                                      titleText: "First Name",
                                      hintText: "Rayan",
                                    ),
                                    6.verticalSpace,
                                    const CustomTextField02(
                                      titleText: "Last Name",
                                      hintText: "Rai",
                                    ),
                                    6.verticalSpace,
                                    const CustomTextField02(
                                      titleText: "Email",
                                      hintText: "sample@gmail.com",
                                    ),
                                    6.verticalSpace,
                                    const CustomTextField02(
                                      titleText: "Phone",
                                      hintText: "+27 123 456 7890",
                                    ),
                                    6.verticalSpace,
                                    const CustomTextField02(
                                      titleText: "Address",
                                      hintText: "Cape Town, South Africa",
                                    ),
                                  ],
                                ),
                              ),
                              40.verticalSpace,
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 65.w),
                                child: CustomButton(
                                  onPressed: () {
                                    // viewModel.navigateToAddcardView();
                                  },
                                  text: "Edit Profile",
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
  ProfileViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProfileViewModel();
}

class CustomTextField02 extends StatelessWidget {
  final String titleText;
  final String hintText;
  const CustomTextField02({
    super.key,
    required this.titleText,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleText,
          style: AppTextStyles.ktBoldTextStyle.copyWith(
            fontSize: 14.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: 25.h,
          child: TextFormField(
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: AppTextStyles.kthintTextStyle.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
