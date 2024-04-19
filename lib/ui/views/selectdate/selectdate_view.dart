import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hulk_transport/core/constants/assets.dart';
import 'package:hulk_transport/core/constants/colors.dart';
import 'package:hulk_transport/ui/common/date_dialog/date_dialog.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_drawer_widget.dart';
import 'package:stacked/stacked.dart';

import 'selectdate_viewmodel.dart';

class SelectdateView extends StackedView<SelectdateViewModel> {
  const SelectdateView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SelectdateViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      // key: viewModel.scaffoldKey,
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
                SizedBox(
                  // height: 650.h,
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
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Column(
                          children: [
                            32.verticalSpace,
                            InkWell(
                              onTap: () {
                                // print("HFES");
                                // showSelectDateDialog(
                                //   context: context,
                                //   onSelectionChanged: (value) {},
                                //   enablePastDates: false,
                                //   maxDate: null,
                                //   minDate: null,
                                // );
                              },
                              child: Text(
                                "Select Date",
                                style: AppTextStyles.ktBoldTextStyle.copyWith(
                                  color: Colors.white,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            23.verticalSpace,
                          ],
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
  SelectdateViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SelectdateViewModel();
}
