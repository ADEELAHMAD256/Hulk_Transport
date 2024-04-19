import 'package:hulk_transport/app/app.locator.dart';
import 'package:hulk_transport/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SelectlocationViewModel extends BaseViewModel {
  final _navigationServices = locator<NavigationService>();

  void navigateToSeachlocationView() {
    _navigationServices.navigateToSeachlocationView();
  }

  void navigateToTypeselectionView() {
    _navigationServices.navigateToTypeselectionView();
  }
}
