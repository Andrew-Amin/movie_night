import 'package:flutter/material.dart';
import '../utils/constants.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class AppNavigation extends StatefulWidget {
  AppNavigation({this.screens});

  static const Tag = "Tabbar";
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
      body: IndexedStack(
        index: _currentIndex,
        children: widget.screens,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: kGoldInkColor,
          ),
          Icon(
            Icons.star,
            size: 30,
            color: kGoldInkColor,
          ),
          Icon(
            Icons.search,
            size: 30,
            color: kGoldInkColor,
          ),
          Icon(
            Icons.favorite,
            size: 30,
            color: kGoldInkColor,
          ),
        ],
        color: kMainLightColor,
        buttonBackgroundColor: kMainLightColor,
        backgroundColor: kMainDarkColor,
        height: 55.0,
        animationCurve: Curves.bounceInOut,
        animationDuration: Duration(milliseconds: 200),
        onTap: onTabTapped,
        index: _currentIndex,

      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
