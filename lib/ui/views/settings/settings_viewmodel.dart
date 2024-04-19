import 'package:hulk_transport/app/app.locator.dart';
import 'package:hulk_transport/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SettingsViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  void navigateToProfileView() {
    _navigationService.navigateToProfileView();
  }

  void navigateToNotificationsView() {}
  void navigateToChangepasswordView() {
    _navigationService.navigateToChangepasswordView();
  }
}
