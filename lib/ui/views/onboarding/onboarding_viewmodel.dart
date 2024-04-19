import 'package:flutter/material.dart';
import 'package:hulk_transport/app/app.locator.dart';
import 'package:hulk_transport/app/app.router.dart';
import 'package:hulk_transport/core/constants/assets.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class OnboardingViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  PageController pageController = PageController();
  List<String> onBoardingImage = [
    AppImages.imChooseLang,
    AppImages.imWelcome,
    AppImages.imRegistration,
    AppImages.imSearchForPickup,
    AppImages.imHirePickUp,
    AppImages.imEnjoyPickUp,
  ];
  List<String> onBoardingTitle = [
    "Choose Language",
    "Welcome Abroad",
    "Registration",
    "Search For Pickup",
    "Hire Pickup",
    "Enjoy Trip",
  ];
  List<String> onBoardingSubTitle = [
    "",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
  ];

  switchPage() {
    pageController.nextPage(
        duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
    rebuildUi();
  }

  void navigateToSignupView() {
    _navigationService.navigateToSignupView();
  }
}
