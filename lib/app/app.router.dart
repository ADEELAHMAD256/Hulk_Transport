// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i29;
import 'package:flutter/material.dart';
import 'package:hulk_transport/ui/views/addcard/addcard_view.dart' as _i13;
import 'package:hulk_transport/ui/views/calling/calling_view.dart' as _i25;
import 'package:hulk_transport/ui/views/changepassword/changepassword_view.dart'
    as _i21;
import 'package:hulk_transport/ui/views/chatting/chatting_view.dart' as _i26;
import 'package:hulk_transport/ui/views/home/home_view.dart' as _i2;
import 'package:hulk_transport/ui/views/labour/labour_view.dart' as _i11;
import 'package:hulk_transport/ui/views/login/login_view.dart' as _i9;
import 'package:hulk_transport/ui/views/mycards/mycards_view.dart' as _i14;
import 'package:hulk_transport/ui/views/notifications/notifications_view.dart'
    as _i15;
import 'package:hulk_transport/ui/views/onboarding/onboarding_view.dart'
    as _i10;
import 'package:hulk_transport/ui/views/payment/payment_view.dart' as _i28;
import 'package:hulk_transport/ui/views/pickup/pickup_view.dart' as _i23;
import 'package:hulk_transport/ui/views/profile/profile_view.dart' as _i17;
import 'package:hulk_transport/ui/views/requestride/requestride_view.dart'
    as _i22;
import 'package:hulk_transport/ui/views/reviews/reviews_view.dart' as _i12;
import 'package:hulk_transport/ui/views/ridedetailes/ridedetailes_view.dart'
    as _i24;
import 'package:hulk_transport/ui/views/seachlocation/seachlocation_view.dart'
    as _i19;
import 'package:hulk_transport/ui/views/selectdate/selectdate_view.dart'
    as _i27;
import 'package:hulk_transport/ui/views/selectlocation/selectlocation_view.dart'
    as _i18;
import 'package:hulk_transport/ui/views/settings/settings_view.dart' as _i16;
import 'package:hulk_transport/ui/views/signup/accountcreated/accountcreated_view.dart'
    as _i8;
import 'package:hulk_transport/ui/views/signup/otp/otp_view.dart' as _i5;
import 'package:hulk_transport/ui/views/signup/setname/setname_view.dart'
    as _i7;
import 'package:hulk_transport/ui/views/signup/setpassword/setpassword_view.dart'
    as _i6;
import 'package:hulk_transport/ui/views/signup/signup_view.dart' as _i4;
import 'package:hulk_transport/ui/views/startup/startup_view.dart' as _i3;
import 'package:hulk_transport/ui/views/typeselection/typeselection_view.dart'
    as _i20;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i30;

class Routes {
  static const homeView = '/home-view';

  static const startupView = '/startup-view';

  static const signupView = '/signup-view';

  static const otpView = '/otp-view';

  static const setpasswordView = '/setpassword-view';

  static const setnameView = '/setname-view';

  static const accountcreatedView = '/accountcreated-view';

  static const loginView = '/login-view';

  static const onboardingView = '/onboarding-view';

  static const labourView = '/labour-view';

  static const reviewsView = '/reviews-view';

  static const addcardView = '/addcard-view';

  static const mycardsView = '/mycards-view';

  static const notificationsView = '/notifications-view';

  static const settingsView = '/settings-view';

  static const profileView = '/profile-view';

  static const selectlocationView = '/selectlocation-view';

  static const seachlocationView = '/seachlocation-view';

  static const typeselectionView = '/typeselection-view';

  static const changepasswordView = '/changepassword-view';

  static const requestrideView = '/requestride-view';

  static const pickupView = '/pickup-view';

  static const ridedetailesView = '/ridedetailes-view';

  static const callingView = '/calling-view';

  static const chattingView = '/chatting-view';

  static const selectdateView = '/selectdate-view';

  static const paymentView = '/payment-view';

  static const all = <String>{
    homeView,
    startupView,
    signupView,
    otpView,
    setpasswordView,
    setnameView,
    accountcreatedView,
    loginView,
    onboardingView,
    labourView,
    reviewsView,
    addcardView,
    mycardsView,
    notificationsView,
    settingsView,
    profileView,
    selectlocationView,
    seachlocationView,
    typeselectionView,
    changepasswordView,
    requestrideView,
    pickupView,
    ridedetailesView,
    callingView,
    chattingView,
    selectdateView,
    paymentView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.homeView,
      page: _i2.HomeView,
    ),
    _i1.RouteDef(
      Routes.startupView,
      page: _i3.StartupView,
    ),
    _i1.RouteDef(
      Routes.signupView,
      page: _i4.SignupView,
    ),
    _i1.RouteDef(
      Routes.otpView,
      page: _i5.OtpView,
    ),
    _i1.RouteDef(
      Routes.setpasswordView,
      page: _i6.SetpasswordView,
    ),
    _i1.RouteDef(
      Routes.setnameView,
      page: _i7.SetnameView,
    ),
    _i1.RouteDef(
      Routes.accountcreatedView,
      page: _i8.AccountcreatedView,
    ),
    _i1.RouteDef(
      Routes.loginView,
      page: _i9.LoginView,
    ),
    _i1.RouteDef(
      Routes.onboardingView,
      page: _i10.OnboardingView,
    ),
    _i1.RouteDef(
      Routes.labourView,
      page: _i11.LabourView,
    ),
    _i1.RouteDef(
      Routes.reviewsView,
      page: _i12.ReviewsView,
    ),
    _i1.RouteDef(
      Routes.addcardView,
      page: _i13.AddcardView,
    ),
    _i1.RouteDef(
      Routes.mycardsView,
      page: _i14.MycardsView,
    ),
    _i1.RouteDef(
      Routes.notificationsView,
      page: _i15.NotificationsView,
    ),
    _i1.RouteDef(
      Routes.settingsView,
      page: _i16.SettingsView,
    ),
    _i1.RouteDef(
      Routes.profileView,
      page: _i17.ProfileView,
    ),
    // _i1.RouteDef(
    //   Routes.selectlocationView,
    //   page: _i18.SelectlocationView,
    // ),
    _i1.RouteDef(
      Routes.seachlocationView,
      page: _i19.SeachlocationView,
    ),
    _i1.RouteDef(
      Routes.typeselectionView,
      page: _i20.TypeselectionView,
    ),
    _i1.RouteDef(
      Routes.changepasswordView,
      page: _i21.ChangepasswordView,
    ),
    _i1.RouteDef(
      Routes.requestrideView,
      page: _i22.RequestrideView,
    ),
    _i1.RouteDef(
      Routes.pickupView,
      page: _i23.PickupView,
    ),
    _i1.RouteDef(
      Routes.ridedetailesView,
      page: _i24.RidedetailesView,
    ),
    _i1.RouteDef(
      Routes.callingView,
      page: _i25.CallingView,
    ),
    _i1.RouteDef(
      Routes.chattingView,
      page: _i26.ChattingView,
    ),
    _i1.RouteDef(
      Routes.selectdateView,
      page: _i27.SelectdateView,
    ),
    _i1.RouteDef(
      Routes.paymentView,
      page: _i28.PaymentView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.StartupView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.StartupView(),
        settings: data,
      );
    },
    _i4.SignupView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.SignupView(),
        settings: data,
      );
    },
    _i5.OtpView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.OtpView(),
        settings: data,
      );
    },
    _i6.SetpasswordView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.SetpasswordView(),
        settings: data,
      );
    },
    _i7.SetnameView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.SetnameView(),
        settings: data,
      );
    },
    _i8.AccountcreatedView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.AccountcreatedView(),
        settings: data,
      );
    },
    _i9.LoginView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => const _i9.LoginView(),
        settings: data,
      );
    },
    _i10.OnboardingView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => const _i10.OnboardingView(),
        settings: data,
      );
    },
    _i11.LabourView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => const _i11.LabourView(),
        settings: data,
      );
    },
    _i12.ReviewsView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => const _i12.ReviewsView(),
        settings: data,
      );
    },
    _i13.AddcardView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => const _i13.AddcardView(),
        settings: data,
      );
    },
    _i14.MycardsView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => const _i14.MycardsView(),
        settings: data,
      );
    },
    _i15.NotificationsView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => const _i15.NotificationsView(),
        settings: data,
      );
    },
    _i16.SettingsView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => const _i16.SettingsView(),
        settings: data,
      );
    },
    _i17.ProfileView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => const _i17.ProfileView(),
        settings: data,
      );
    },
    // _i18.SelectlocationView: (data) {
    //   return _i29.MaterialPageRoute<dynamic>(
    //     builder: (context) => const _i18.SelectlocationView(),
    //     settings: data,
    //   );
    // },
    _i19.SeachlocationView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => const _i19.SeachlocationView(),
        settings: data,
      );
    },
    _i20.TypeselectionView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => const _i20.TypeselectionView(),
        settings: data,
      );
    },
    _i21.ChangepasswordView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => const _i21.ChangepasswordView(),
        settings: data,
      );
    },
    _i22.RequestrideView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => const _i22.RequestrideView(),
        settings: data,
      );
    },
    _i23.PickupView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => const _i23.PickupView(),
        settings: data,
      );
    },
    _i24.RidedetailesView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => const _i24.RidedetailesView(),
        settings: data,
      );
    },
    _i25.CallingView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => const _i25.CallingView(),
        settings: data,
      );
    },
    _i26.ChattingView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => const _i26.ChattingView(),
        settings: data,
      );
    },
    _i27.SelectdateView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => const _i27.SelectdateView(),
        settings: data,
      );
    },
    _i28.PaymentView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => const _i28.PaymentView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

extension NavigatorStateExtension on _i30.NavigationService {
  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSignupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.signupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToOtpView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.otpView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSetpasswordView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.setpasswordView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSetnameView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.setnameView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAccountcreatedView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.accountcreatedView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToOnboardingView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.onboardingView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLabourView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.labourView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToReviewsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.reviewsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAddcardView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.addcardView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToMycardsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.mycardsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToNotificationsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.notificationsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSettingsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.settingsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.profileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSelectlocationView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.selectlocationView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSeachlocationView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.seachlocationView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToTypeselectionView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.typeselectionView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToChangepasswordView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.changepasswordView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToRequestrideView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.requestrideView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPickupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.pickupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToRidedetailesView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.ridedetailesView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCallingView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.callingView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToChattingView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.chattingView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSelectdateView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.selectdateView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPaymentView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.paymentView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSignupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.signupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithOtpView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.otpView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSetpasswordView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.setpasswordView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSetnameView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.setnameView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAccountcreatedView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.accountcreatedView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithOnboardingView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.onboardingView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLabourView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.labourView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithReviewsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.reviewsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAddcardView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.addcardView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithMycardsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.mycardsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithNotificationsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.notificationsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSettingsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.settingsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.profileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSelectlocationView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.selectlocationView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSeachlocationView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.seachlocationView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithTypeselectionView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.typeselectionView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithChangepasswordView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.changepasswordView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithRequestrideView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.requestrideView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPickupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.pickupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithRidedetailesView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.ridedetailesView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCallingView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.callingView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithChattingView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.chattingView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSelectdateView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.selectdateView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPaymentView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.paymentView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
