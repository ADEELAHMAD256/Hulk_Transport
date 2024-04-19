import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hulk_transport/core/constants/assets.dart';
import 'package:hulk_transport/core/constants/colors.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_app_bar_widget.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_button.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_drawer_widget.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_image_widget.dart';
import 'package:stacked/stacked.dart';

import 'typeselection_viewmodel.dart';

class TypeselectionView extends StackedView<TypeselectionViewModel> {
  const TypeselectionView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    TypeselectionViewModel viewModel,
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
                                36.verticalSpace,
                                Text(
                                  "Vehicle Type",
                                  style: AppTextStyles.ktBoldTextStyle.copyWith(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                3.verticalSpace,
                                CustomDropDown(
                                  list: viewModel.list,
                                  selectedValue: viewModel.dropdownValue,
                                  onChanged: (String? value) {
                                    viewModel.onValueChange(value!);
                                  },
                                ),
                                53.verticalSpace,
                                Text(
                                  "Product Type",
                                  style: AppTextStyles.ktBoldTextStyle.copyWith(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                3.verticalSpace,
                                CustomDropDown(
                                  list: viewModel.list,
                                  selectedValue: viewModel.dropdownValue,
                                  onChanged: (String? value) {
                                    viewModel.onValueChange(value!);
                                  },
                                ),
                                320.verticalSpace,
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 65.w),
                                  child: CustomButton(
                                    bgColor: Colors.transparent,
                                    borderColor: Colors.white,
                                    onPressed: () {
                                      viewModel.navigateToLabourScreen();
                                    },
                                    text: "Next",
                                  ),
                                ),
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
  TypeselectionViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TypeselectionViewModel();
}

class CustomDropDown extends StatelessWidget {
  final List<String> list;
  final void Function(String?)? onChanged;
  final String selectedValue;
  const CustomDropDown({
    super.key,
    required this.list,
    required this.onChanged,
    required this.selectedValue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.r),
      ),
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: Center(
        child: DropdownButton<String>(
          hint: const Text("Select Vehicle Type"),
          value: selectedValue,
          icon: CustomImageView(
            imagePath: AppIcons.icDropDown,
            height: 32.h,
            width: 32.w,
            fit: BoxFit.contain,
          ),
          underline: Container(),
          isExpanded: true,
          style: AppTextStyles.ktRegularTextStyle.copyWith(
            color: const Color.fromRGBO(0, 0, 0, 0.87),
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
          onChanged: onChanged,
          items: list.map<DropdownMenuItem<String>>(
            (String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
