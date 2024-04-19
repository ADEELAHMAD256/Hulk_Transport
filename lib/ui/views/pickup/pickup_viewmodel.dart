import 'package:hulk_transport/app/app.locator.dart';
import 'package:hulk_transport/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class PickupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  List<String> list = ["Cash", "Credit Card", "Paypal"];
  String selectedValue = "Cash";
  void toggle(String value) {
    selectedValue = value;
    notifyListeners();
  }

  void navigateToRidedetailesView() {
    _navigationService.navigateToRidedetailesView();
  }
}
