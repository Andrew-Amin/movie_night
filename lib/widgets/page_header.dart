import 'package:flutter/material.dart';
import 'package:movie_night/utils/constants.dart';

class PageHeader extends StatelessWidget {
  const PageHeader({
    Key key,
    @required String selectedCategory,
  })  : _selectedCategory = selectedCategory,
        super(key: key);

  final String _selectedCategory;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: 'Movies / ',
                  style: TextStyle(
                      color: kMainLightColor,
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Teko_Bold',
                      letterSpacing: 1.2),
                ),
                TextSpan(
                  text: _selectedCategory,
                  style: TextStyle(
                      color: kMainLightColor.withOpacity(0.7),
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Teko_Medium',
                      letterSpacing: 1.2),
                ),
              ],
            ),
          ),
          Icon(
            Icons.more_vert,
            color: kMainLightColor,
            size: 25.0,
          ),
        ],
      ),
    );
  }
}
