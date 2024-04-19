import 'package:hulk_transport/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:hulk_transport/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:hulk_transport/ui/views/home/home_view.dart';
import 'package:hulk_transport/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:hulk_transport/ui/views/signup/signup_view.dart';
import 'package:hulk_transport/ui/views/signup/otp/otp_view.dart';
import 'package:hulk_transport/ui/views/signup/setpassword/setpassword_view.dart';
import 'package:hulk_transport/ui/views/signup/setname/setname_view.dart';
import 'package:hulk_transport/ui/views/signup/accountcreated/accountcreated_view.dart';
import 'package:hulk_transport/ui/views/login/login_view.dart';
import 'package:hulk_transport/ui/views/onboarding/onboarding_view.dart';
import 'package:hulk_transport/ui/views/labour/labour_view.dart';
import 'package:hulk_transport/ui/views/reviews/reviews_view.dart';
import 'package:hulk_transport/ui/views/addcard/addcard_view.dart';
import 'package:hulk_transport/ui/views/mycards/mycards_view.dart';
import 'package:hulk_transport/ui/views/notifications/notifications_view.dart';
import 'package:hulk_transport/ui/views/settings/settings_view.dart';
import 'package:hulk_transport/ui/views/profile/profile_view.dart';
import 'package:hulk_transport/ui/views/selectlocation/selectlocation_view.dart';
import 'package:hulk_transport/ui/views/seachlocation/seachlocation_view.dart';
import 'package:hulk_transport/ui/views/typeselection/typeselection_view.dart';
import 'package:hulk_transport/ui/views/changepassword/changepassword_view.dart';
import 'package:hulk_transport/ui/views/requestride/requestride_view.dart';
import 'package:hulk_transport/ui/views/pickup/pickup_view.dart';
import 'package:hulk_transport/ui/views/ridedetailes/ridedetailes_view.dart';
import 'package:hulk_transport/ui/views/calling/calling_view.dart';
import 'package:hulk_transport/ui/views/chatting/chatting_view.dart';
import 'package:hulk_transport/ui/views/selectdate/selectdate_view.dart';
import 'package:hulk_transport/ui/views/payment/payment_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: SignupView),
    MaterialRoute(page: OtpView),
    MaterialRoute(page: SetpasswordView),
    MaterialRoute(page: SetnameView),
    MaterialRoute(page: AccountcreatedView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: OnboardingView),
    MaterialRoute(page: LabourView),
    MaterialRoute(page: ReviewsView),
    MaterialRoute(page: AddcardView),
    MaterialRoute(page: MycardsView),
    MaterialRoute(page: NotificationsView),
    MaterialRoute(page: SettingsView),
    MaterialRoute(page: ProfileView),
    // MaterialRoute(page: SelectlocationView),
    MaterialRoute(page: SeachlocationView),
    MaterialRoute(page: TypeselectionView),
    MaterialRoute(page: ChangepasswordView),
    MaterialRoute(page: RequestrideView),
    MaterialRoute(page: PickupView),
    MaterialRoute(page: RidedetailesView),
    MaterialRoute(page: CallingView),
    MaterialRoute(page: ChattingView),
    MaterialRoute(page: SelectdateView),
    MaterialRoute(page: PaymentView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
