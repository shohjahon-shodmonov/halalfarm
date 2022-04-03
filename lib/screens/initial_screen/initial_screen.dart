import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:halolfarm/core/components/size_config.dart';
import 'package:halolfarm/screens/home_screen/home_screen.dart';
import 'package:halolfarm/screens/notification/notification_screen.dart';
import 'package:halolfarm/screens/profile_screen/profile_screen.dart';
import 'package:halolfarm/screens/search_screen/search_screen.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  List screens = [
    HomeScreen(),
    SearchScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];

  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.green,
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: _pageIndex == 0
                ? SvgPicture.asset(
                    'assets/icons/nav_bar/home-active.svg',
                    height: getProportionScreenHeight(28),
                    width: getProportionScreenWidth(28),
                  )
                : SvgPicture.asset(
                    'assets/icons/nav_bar/home.svg',
                    height: getProportionScreenHeight(28),
                    width: getProportionScreenWidth(28),
                  ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: _pageIndex == 1
                ? SvgPicture.asset(
                    'assets/icons/nav_bar/search-active.svg',
                    height: getProportionScreenHeight(28),
                    width: getProportionScreenWidth(28),
                  )
                : SvgPicture.asset(
                    'assets/icons/nav_bar/search.svg',
                    height: getProportionScreenHeight(28),
                    width: getProportionScreenWidth(28),
                  ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: _pageIndex == 2
                ? SvgPicture.asset(
                    'assets/icons/nav_bar/bell-active.svg',
                    height: getProportionScreenHeight(28),
                    width: getProportionScreenWidth(28),
                  )
                : SvgPicture.asset(
                    'assets/icons/nav_bar/bell.svg',
                    height: getProportionScreenHeight(28),
                    width: getProportionScreenWidth(28),
                  ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: _pageIndex == 3
                ? SvgPicture.asset(
                    'assets/icons/nav_bar/user-active.svg',
                    height: getProportionScreenHeight(28),
                    width: getProportionScreenWidth(28),
                  )
                : SvgPicture.asset(
                    'assets/icons/nav_bar/user.svg',
                    height: getProportionScreenHeight(28),
                    width: getProportionScreenWidth(28),
                  ),
          ),
        ],
        onTap: (v) {
          setState(() {
            _pageIndex = v;
          });
        },
      ),
    );
  }
}
