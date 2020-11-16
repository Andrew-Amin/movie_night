import 'package:flutter/material.dart';
import 'package:movie_night/utils/constants.dart';

import 'popularity_panel.dart';

class VideoAndPopularityPanel extends StatelessWidget {
  const VideoAndPopularityPanel({
    Key key,
    @required Size screenSize,
    @required this.imgURL,
  })  : _screenSize = screenSize,
        super(key: key);

  final Size _screenSize;
  final String imgURL;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      overflow: Overflow.visible,
      children: <Widget>[
        Container(
          height: 250,
          width: _screenSize.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                imgURL,
              ),
            ),
          ),
          child: IconButton(
            onPressed: () {
              //todo:perform play video operation
            },
            icon: Icon(
              Icons.play_circle_filled,
              color: kMainLightColor,
              size: 80,
            ),
          ),
        ),
        Container(
          height: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(48)),
            gradient: LinearGradient(
              colors: [
                kMainDarkColor,
                Colors.transparent,
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
        PopularityPanel(screenSize: _screenSize),
      ],
    );
  }
}
