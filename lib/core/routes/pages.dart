import 'package:rentcar/core/routes/routes.dart';
import 'package:rentcar/features/auth/login/view/login_view.dart';
import 'package:rentcar/features/auth/register/view/register_view.dart';
import 'package:rentcar/features/welcome/view/splash_view.dart';

import '../../features/auth/forget_password/view/forget_password_view.dart';
import '../../features/auth/forget_password/view/new_password_view.dart';

var routes = {
  AppRoutes.splash: (context) => const SplashView(),
  AppRoutes.login: (context) => const LoginView(),
  AppRoutes.register: (context) => const RegisterView(),
  AppRoutes.forgetPassword: (context) => const ForgetPasswordView(),
  AppRoutes.newPassword: (context) => const NewPasswordView(),
};
