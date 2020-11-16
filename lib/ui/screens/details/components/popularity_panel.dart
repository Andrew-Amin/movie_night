import 'package:flutter/material.dart';
import 'package:movie_night/utils/constants.dart';

class PopularityPanel extends StatelessWidget {
  const PopularityPanel({
    Key key,
    @required Size screenSize,
  })  : _screenSize = screenSize,
        super(key: key);

  final Size _screenSize;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -30,
      right: 0,
      child: Material(
        elevation: 10.0,
        child: Container(
          width: _screenSize.width * 0.9,
          height: 75,
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Icon(
                    Icons.star,
                    color: kGoldInkColor,
                  ),
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: '8.9',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Teko_Medium',
                              color: kMainLightColor,
                            )),
                        TextSpan(
                            text: '/10',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: 'Teko_Regular',
                              color: kSecondLightColor,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.star_border,
                    color: Colors.white54,
                  ),
                  Text(
                    'Rate This',
                    style: TextStyle(
                      color: kMainLightColor,
                      fontFamily: 'Teko_Medium',
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.portrait,
                    color: Colors.greenAccent,
                  ),
                  Text(
                    '1196.276',
                    style: TextStyle(
                      color: kMainLightColor,
                      fontFamily: 'Teko_Medium',
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        color: kSecondDarkColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          bottomLeft: Radius.circular(30.0),
        ),
      ),
    );
  }
}
