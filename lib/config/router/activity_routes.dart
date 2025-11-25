import 'package:activity_booking/features/admin/home/presentation/view/admin_home_screen.dart';
import 'package:activity_booking/features/auth/introduction/presentation/view/introduction_screen.dart';
import 'package:activity_booking/features/auth/otp_screen/presentation/view/otp_screen.dart';
import 'package:activity_booking/features/auth/sign_in/presentation/sign_in_screen.dart';
import 'package:activity_booking/features/auth/sign_up/presentation/view/admin_signup_screen.dart';
import 'package:activity_booking/features/auth/sign_up/presentation/view/client_signup_screen.dart';
import 'package:activity_booking/features/auth/verification_type/presentation/view/verfication_type_screen.dart';
import 'package:activity_booking/features/client/favorites/presentation/view/client_favorite_screen.dart';
import 'package:activity_booking/features/client/home/presentation/view/client_home_screen.dart';
import 'package:activity_booking/features/client/main/presentation/view/main_screen.dart';
import 'package:activity_booking/features/client/map/presentation/view/filter_map_screen.dart';
import 'package:activity_booking/features/client/map/presentation/view/map_search_screen.dart';
import 'package:activity_booking/features/client/payment/presentation/view/client_payment_screen.dart';
import 'package:activity_booking/features/client/profile/presentation/view/client_edit_profile.dart';
import 'package:activity_booking/features/client/settings/presentation/view/client_settings_screen.dart';
import 'package:activity_booking/features/client/support/presentation/view/client_support_screen.dart';
import 'package:get/get.dart';

class ActivityRoutes {
  static final routes = [
    GetPage(name: "/intro", page: () => IntroductionScreen()),
    GetPage(name: SignInScreen.route, page: () => SignInScreen()),
    GetPage(name: "/signup_client", page: () => ClientSignupScreen()),
    GetPage(name: "/signup_admin", page: () => AdminSignupScreen()),
    GetPage(
        name: VerficationTypeScreen.route, page: () => VerficationTypeScreen()),

    GetPage(name: MainScreen.route, page: () => MainScreen()),
    GetPage(name: ClientHomeScreen.route, page: () => ClientHomeScreen()),
    GetPage(name: OtpScreen.route, page: () => OtpScreen()),
    GetPage(name: MapSearchScreen.route, page: () => MapSearchScreen()),
    GetPage(name: FilterMapScreen.route, page: () => FilterMapScreen()),
    GetPage(name: ClientEditProfile.route, page: () => ClientEditProfile()),
    GetPage(name: ClientFavoriteScreen.route, page: () => ClientFavoriteScreen()),
    GetPage(name: ClientSupportScreen.route, page: () => ClientSupportScreen()),
    GetPage(name: ClientSettingsScreen.route, page: () => ClientSettingsScreen()),
    GetPage(name: ClientPaymentScreen.route, page: () => ClientPaymentScreen()),


    GetPage(name: AdminHomeScreen.route, page: () => AdminHomeScreen()),
  ];
}
