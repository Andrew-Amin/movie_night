import 'package:flutter/material.dart';
import 'package:movie_night/utils/constants.dart';

class GenericsList extends StatelessWidget {
  const GenericsList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Action',
        style: TextStyle(
          color: Colors.white70,
          fontSize: 18.0,
          fontFamily: 'Teko_Regular',
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(color: kGoldInkColor, width: 2),
      ),
      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10.0),
      margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
    );
  }
}
