import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hulk_transport/core/constants/assets.dart';
import 'package:hulk_transport/core/constants/colors.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_image_widget.dart';
import 'package:stacked/stacked.dart';

import 'chatting_viewmodel.dart';

class ChattingView extends StackedView<ChattingViewModel> {
  const ChattingView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ChattingViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      // backgroundColor: Theme.of(context).colorScheme.background,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.all(8.0.sp),
          child: CustomImageView(
            imagePath: AppIcons.icMenu,
            fit: BoxFit.contain,
          ),
        ),
        title: Text(
          'Chat',
          style: AppTextStyles.ktBoldTextStyle.copyWith(
            color: Colors.white,
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          CustomImageView(
            imagePath: AppIcons.icNotifications,
            height: 40.h,
            width: 40.w,
            fit: BoxFit.contain,
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.imBGredWave),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  @override
  ChattingViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ChattingViewModel();
}
