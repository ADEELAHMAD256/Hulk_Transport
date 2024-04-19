import 'package:hulk_transport/app/app.locator.dart';
import 'package:hulk_transport/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class MycardsViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void navigateToNotificationsView() {
    _navigationService.navigateToNotificationsView();
  }

  void navigateToAddcardView() {
    _navigationService.navigateToAddcardView();
  }
}
