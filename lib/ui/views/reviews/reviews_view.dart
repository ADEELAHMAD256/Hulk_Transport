import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hulk_transport/core/constants/assets.dart';
import 'package:hulk_transport/core/constants/colors.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_app_bar_widget.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_drawer_child_row.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_drawer_widget.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_image_widget.dart';
import 'package:hulk_transport/ui/custom_widgets/custom_review_widget.dart';
import 'package:stacked/stacked.dart';

import 'reviews_viewmodel.dart';

class ReviewsView extends StackedView<ReviewsViewModel> {
  const ReviewsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ReviewsViewModel viewModel,
    Widget? child,
  ) {
    List<Map> reviewsModel = [
      {
        "fillStars": 5,
        "reviewerName": "Emily Johnson",
        "reviewTime": "10 min. Ago",
        "reviewDescription":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      },
      {
        "fillStars": 4,
        "reviewerName": "Olivia Davis",
        "reviewTime": "1 h. Ago",
        "reviewDescription":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      },
      {
        "fillStars": 3,
        "reviewerName": "William Anderson",
        "reviewTime": "5 h. Ago",
        "reviewDescription":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      },
    ];
    return Scaffold(
      key: viewModel.scaffoldKey,
      backgroundColor: Theme.of(context).colorScheme.background,
      extendBodyBehindAppBar: true,
      drawer: CustomDrawer(
        onTapSettings: () => viewModel.navigateToSettingsView(),
        onTapMyWallet: () => viewModel.navigateToMycardsView(),
        onTapNotifications: () => viewModel.navigateToNotificationsView(),
      ),
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
                                child: InkWell(
                                  onTap: () {
                                    viewModel.navigateToMycardsView();
                                  },
                                  child: Text(
                                    "Reviews",
                                    style:
                                        AppTextStyles.ktBoldTextStyle.copyWith(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                              13.verticalSpace,
                              ...List.generate(
                                reviewsModel.length,
                                (index) => Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15.w, vertical: 5.h),
                                  child: ReviewWidget(
                                    fillStars: reviewsModel[index]["fillStars"],
                                    reviewerName: reviewsModel[index]
                                        ["reviewerName"],
                                    reviewTime: reviewsModel[index]
                                        ["reviewTime"],
                                    reviewDescription: reviewsModel[index]
                                        ["reviewDescription"],
                                  ),
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
  ReviewsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ReviewsViewModel();
}
