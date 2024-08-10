import 'package:rentcar/core/routes/routes.dart';
import 'package:rentcar/features/auth/login/view/login_view.dart';
import 'package:rentcar/features/auth/register/view/register_view.dart';
import 'package:rentcar/features/welcome/view/splash_view.dart';

var routes = {
  AppRoutes.splash: (context) => const SplashView(),
  AppRoutes.login: (context) => const LoginView(),
  AppRoutes.register: (context) => const RegisterView(),
  // AppRoutes.home: (context) => const HomeView(),
};
