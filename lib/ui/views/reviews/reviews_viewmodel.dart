import 'package:flutter/material.dart';
import 'package:hulk_transport/app/app.locator.dart';
import 'package:hulk_transport/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ReviewsViewModel extends BaseViewModel {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  final _navigationService = locator<NavigationService>();
  //

  void navigateToMycardsView() {
    _navigationService.navigateToMycardsView();
  }

  void navigateToSettingsView() {
    _navigationService.navigateToSettingsView();
  }

  void navigateToNotificationsView() {
    _navigationService.navigateToNotificationsView();
  }
}
