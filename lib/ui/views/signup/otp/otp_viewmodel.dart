import 'package:hulk_transport/app/app.locator.dart';
import 'package:hulk_transport/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class OtpViewModel extends BaseViewModel {
  List<bool> isSelected = [true, false, false, false];

  final _authServices = locator<NavigationService>();

  void navigateToSetPassword() {
    _authServices.navigateToSetpasswordView();
  }

  void onPinChanged(String value, int index) {
    isSelected[index] = value.isNotEmpty;
    notifyListeners();
  }
}
