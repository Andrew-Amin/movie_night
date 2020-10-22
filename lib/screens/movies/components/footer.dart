import 'package:flutter/material.dart';
import 'package:movie_night/utils/constants.dart';

class SliverPageFooter extends StatelessWidget {
  final Function onClick;
  final bool show;
  SliverPageFooter({this.onClick, @required this.show});
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        GestureDetector(
          onTap: () => onClick,
          child: show
              ? Text(
                  'ـــــــــــــــ more ـــــــــــــــ',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: kSecondLightColor, fontSize: 22.0),
                )
              : SizedBox.shrink(),
        ),
        Image.asset(
          'images/logo.png',
        ),
      ]),
    );
  }
}
