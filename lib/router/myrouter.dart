import 'package:flutter/material.dart';
import 'package:halolfarm/screens/authentication_pages/sign_in/sign_in_screen.dart';
import 'package:halolfarm/screens/authentication_pages/sign_page/sign_page.dart';
import 'package:halolfarm/screens/authentication_pages/signup_screen/signup_screen.dart';
import 'package:halolfarm/screens/authentication_pages/sms_valid/sms_validation.dart';
import 'package:halolfarm/screens/boarding_screens/onboarding1.dart';
import 'package:halolfarm/screens/home_screen/home_screen.dart';
import 'package:halolfarm/screens/language_select/language_select_screen.dart';

class RouteGenerator {
  Route? routeGenerate(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case "/language":
        return MaterialPageRoute(builder: (_) => const LanguageSelect());
      
      case "/onboarding":
        return MaterialPageRoute(builder: (_) => const OnBoardingOne());
      case "/signInOrUp":
        return MaterialPageRoute(builder: (_) => const Sign());
      case "/signUpPage":
        return MaterialPageRoute(builder: (_) => SignUpScreen());
      case "/smsValidation":
        return MaterialPageRoute(builder: (_) => const SmsValidationScreen());
      case "/signIn":
        return MaterialPageRoute(builder: (_) => const SignInScreen());
    }
    return null;
  }
}