import 'package:flutter/material.dart';
import 'package:hulk_transport/app/app.locator.dart';
import 'package:hulk_transport/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LabourViewModel extends BaseViewModel {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  final navigationService = locator<NavigationService>();
  //

  void navigateToReviewsView() {
    navigationService.navigateToReviewsView();
  }

  void navigateToSettingsView() {
    navigationService.navigateToSettingsView();
  }

  void navigateToMyCardsView() {
    navigationService.navigateToMycardsView();
  }

  void navigateToNotificationsView() {
    navigationService.navigateToNotificationsView();
  }

  void navigateToRequestrideView() {
    navigationService.navigateToRequestrideView();
  }
}
