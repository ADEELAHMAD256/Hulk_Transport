import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hulk_transport/core/constants/assets.dart';
import 'package:hulk_transport/core/constants/colors.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_button.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_image_widget.dart';
import 'package:stacked/stacked.dart';

import 'accountcreated_viewmodel.dart';

class AccountcreatedView extends StackedView<AccountcreatedViewModel> {
  const AccountcreatedView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AccountcreatedViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          130.verticalSpace,
          Align(
            alignment: Alignment.center,
            child: Text(
              "Your Account Created\nSuccessfully !",
              style: AppTextStyles.ktBoldTextStyle,
              textAlign: TextAlign.center,
            ),
          ),
          90.verticalSpace,
          CustomImageView(
            imagePath: AppImages.imAccountCreated,
            width: 247.w,
            height: 308.h,
            fit: BoxFit.contain,
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 77.w),
            child: CustomButton(
              onPressed: () {
                viewModel.navigateToSelectlocationView();
              },
              text: "Done",
            ),
          ),
          50.verticalSpace,
        ],
      ),
    );
  }

  @override
  AccountcreatedViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AccountcreatedViewModel();
}
