import 'package:clone_ecommerce_ui/presentation/auth/forgot_password_screen.dart';
import 'package:clone_ecommerce_ui/presentation/auth/login_success_screen.dart';
import 'package:clone_ecommerce_ui/presentation/auth/sign_in_screen.dart';
import 'package:clone_ecommerce_ui/presentation/auth/sign_up_complete_screen.dart';
import 'package:clone_ecommerce_ui/presentation/auth/sign_up_screen.dart';
import 'package:clone_ecommerce_ui/presentation/details/details_screen.dart';
import 'package:clone_ecommerce_ui/presentation/main_screen.dart';
import 'package:clone_ecommerce_ui/presentation/splash/splash_screen.dart';
import 'package:clone_ecommerce_ui/presentation/wish/wish_cart_screen.dart';
import 'package:flutter/material.dart';

final routes = Map.of(<String, WidgetBuilder>{
  "/splash": ((context) => const SplashScreen()),
  "/signin": ((context) => const SignInScreen()),
  "/signup": ((context) => SignUpScreen()),
  "/signup/complete": ((context) => SignUpCompleteScreen()),
  "/forgotpassword": ((context) => const ForgotPasswordScreen()),
  "/login/success": ((context) => LoginSuccessScreen()),
  "/home": ((context) => MainScreen()),
  "/details": ((context) => const DetailsScreen()),
  "/cart": ((context) => const WishCartScreen()),
});

const searchBackground = Color(0xFFEEEEEE);
