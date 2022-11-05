import 'package:complete_shop_app/view/screens/auth/login_screen.dart';
import 'package:complete_shop_app/view/screens/auth/signup_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../view/screens/welcome_screen.dart';

class AppRoutes {
  // initial route
  static const welcomeScreen = Routes.welcomeScreen;
  static const loginScreen = Routes.loginScreen;
  static const signupScreen = Routes.signupScreen;

  // get page
  static final routes = [
    GetPage(name: welcomeScreen, page: () => WelcomeScreen()),
    GetPage(name: loginScreen, page: () => const LoginScreen()),
    GetPage(name: signupScreen, page: () => const SignUpScreen()),
  ];
}

class Routes {
  static const welcomeScreen = "/welcomeScreen";
  static const loginScreen = "/loginScreen";
  static const signupScreen = "/signupScreen";
}
