import 'package:flutter/material.dart';

enum AppThemes {
  HoloDark,
  HoloLight,
}
const kMainDarkColor = Color(0xff2d2d2d);
const kSecondDarkColor = Color(0xff424242);
const kSecondLightColor = Color(0xff838383);
const kMainLightColor = Color(0xffffffff);
const kGoldInkColor = Color(0xffffc491);
const kAccentColor = Color(0xfffe8785);

final appThemeData = ThemeData(
  brightness: Brightness.dark,
  primaryColor: kMainDarkColor,
  accentColor: kGoldInkColor,
//  textTheme: TextTheme(
//
//  ),
);
