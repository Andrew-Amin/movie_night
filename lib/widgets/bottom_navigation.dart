import 'package:flutter/material.dart';
import 'package:movie_night/utils/size_config.dart';
import '../utils/constants.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class AppNavigation extends StatefulWidget {
  AppNavigation({this.screens});

  final List<Widget> screens;
  @override
  State<StatefulWidget> createState() {
    return _AppNavigationState();
  }
}

class _AppNavigationState extends State<AppNavigation> {
  int _currentIndex = 0;
  Widget currentScreen;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          IndexedStack(
            index: _currentIndex,
            children: widget.screens,
          ),
          CurvedNavigationBar(
            items: <Widget>[
              Icon(
                Icons.movie_filter,
                size: 30,
                color: kGoldInkColor,
              ),
              Icon(
                Icons.live_tv,
                size: 30,
                color: kGoldInkColor,
              ),
              Icon(
                Icons.search,
                size: 30,
                color: kGoldInkColor,
              ),
              Icon(
                Icons.favorite_border,
                size: 30,
                color: kGoldInkColor,
              ),
            ],
            color: kSecondDarkColor,
            buttonBackgroundColor: kSecondDarkColor,
            backgroundColor: Colors.transparent,
            height: 55.0,
            animationCurve: Curves.bounceInOut,
            animationDuration: Duration(milliseconds: 200),
            onTap: onTabTapped,
            index: _currentIndex,
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
