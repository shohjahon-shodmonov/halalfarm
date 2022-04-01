import 'package:flutter/material.dart';
import 'package:halolfarm/screens/home_screen/home_screen.dart';
import 'package:halolfarm/screens/language_select/language_select_screen.dart';
import 'package:halolfarm/screens/boarding_screens/onboarding1.dart';
import 'package:halolfarm/screens/boarding_screens/onboarding2.dart';
import 'package:halolfarm/screens/boarding_screens/onboarding3.dart';
import 'package:halolfarm/screens/authentication_pages/sign_page/sign_page.dart';
import 'package:halolfarm/screens/authentication_pages/signup_screen/signup_screen.dart';
import 'package:halolfarm/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SignUpScreen(),
    );
  }
}
