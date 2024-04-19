import 'package:hulk_transport/app/app.locator.dart';
import 'package:hulk_transport/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SignupViewModel extends BaseViewModel {
  // Add ViewModel specific code here
  final _navigationService = locator<NavigationService>();

  void navigateToOtpView() {
    _navigationService.navigateToOtpView();
  }

  void navigateToLoginView() {
    _navigationService.navigateToLoginView();
  }
}
