import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:movie_night/ui/global/widgets/category_element.dart';
import 'package:movie_night/utils/constants.dart';

import 'media_details_body.dart';
import 'video_and_popularity_panel.dart';

class DetailsBody extends StatelessWidget {
  final String imgURL =
      'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80';

  final Size _screenSize;

  DetailsBody(this._screenSize);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kMainDarkColor,
      child: ListView(
        children: <Widget>[
          VideoAndPopularityPanel(screenSize: _screenSize, imgURL: imgURL),
          MediaDetailsBody(),
          CategoryElement(),
          Image.asset(
            'images/logo.png',
            height: 200,
          ),
        ],
      ),
    );
  }
}
