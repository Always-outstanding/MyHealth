import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_health/screens/auth/ForgetPassword/successResetPassword.dart';
import 'package:my_health/screens/auth/successSignUp.dart';
import 'package:my_health/screens/main_screen.dart';

import 'core/class/routes.dart';
import 'screens/auth/ForgetPassword/forgetPasswprd.dart';
import 'screens/auth/login_screen.dart';
import 'screens/auth/ForgetPassword/resetPasswprd.dart';
import 'screens/auth/signup_scrren.dart';
import 'screens/auth/ForgetPassword/vrefiyCode.dart';
import 'screens/auth/verifycodeSignUp.dart';
import 'screens/home_secreen.dart';

Map<String, Widget Function(BuildContext)> routes = {
//  Auth
  AppRoute.login: (context) => const LoginScreen(),
  AppRoute.signUp: (context) => const sigup(),
  AppRoute.forgetPassword: (context) => const forgetPassword(),
  AppRoute.vrefiyCode: (context) => const vrefiyCode(),
  AppRoute.resetPasswprd: (context) => const resetPasswprd(),
  AppRoute.successResetPassword: (context) => const SuccessResetPassword(),
  AppRoute.successSignUp: (context) => const SuccessSignUp(),
  AppRoute.verifycodeSignUp: (context) => const VrefiyCodeSignUp(),
  AppRoute.home_screen: (context) => const home_screen(),
    AppRoute.main_screen: (context) => const MainScreen(),

};
