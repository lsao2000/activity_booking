import 'package:activity_booking/features/auth/introduction/presentation/view/introduction_screen.dart';
import 'package:activity_booking/features/auth/sign_in/sign_in_screen.dart';
import 'package:activity_booking/features/auth/sign_up/presentation/view/admin_signup_screen.dart';
import 'package:activity_booking/features/auth/sign_up/presentation/view/client_signup_screen.dart';
import 'package:get/get.dart';

class ActivityRoutes {
  static final routes = [
    GetPage(name: "/intro", page: () => IntroductionScreen()),
    GetPage(name: "/sign_in", page: () => SignInScreen()),
    GetPage(name: "/signup_client", page: () => ClientSignupScreen()),
    GetPage(name: "/signup_admin", page: () => AdminSignupScreen()),
  ];
}
