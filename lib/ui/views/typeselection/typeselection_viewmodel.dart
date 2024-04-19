import 'package:flutter/material.dart';
import 'package:hulk_transport/app/app.locator.dart';
import 'package:hulk_transport/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class TypeselectionViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  // Scafold Key
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final List<String> list = <String>['Select', 'One', 'Two', 'Three', 'Four'];
  String dropdownValue = "Select";

  void navigateToLabourScreen() {
    _navigationService.navigateToLabourView();
  }

  onValueChange(String value) {
    dropdownValue = value;
    rebuildUi();
  }
}
