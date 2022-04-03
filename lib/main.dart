import 'package:flutter/material.dart';
import 'package:halolfarm/router/myrouter.dart';
import 'package:halolfarm/screens/home_screen/home_screen.dart';
import 'package:halolfarm/screens/language_select/language_select_screen.dart';
import 'package:halolfarm/screens/boarding_screens/onboarding1.dart';
import 'package:halolfarm/screens/authentication_pages/sign_page/sign_page.dart';
import 'package:halolfarm/screens/authentication_pages/signup_screen/signup_screen.dart';
import 'package:halolfarm/screens/not_have_animals/not_have_animals.dart';
import 'package:halolfarm/screens/notification/notification_screen.dart';
import 'package:halolfarm/screens/search_screen/search_screen.dart';
import 'package:halolfarm/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final RouteGenerator _router = RouteGenerator();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Halal Farm',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      onGenerateRoute: _router.routeGenerate,
      //home: NotificationScreen(),
    );
  }
}
