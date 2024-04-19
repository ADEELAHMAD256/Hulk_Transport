import 'package:hulk_transport/app/app.locator.dart';
import 'package:hulk_transport/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AccountcreatedViewModel extends BaseViewModel {
  //
  final _navigationService = locator<NavigationService>();

  void navigateToSelectlocationView() {
    _navigationService.navigateToSelectlocationView();
  }
}
