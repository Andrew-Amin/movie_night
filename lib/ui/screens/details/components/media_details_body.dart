import 'package:flutter/material.dart';
import 'package:movie_night/utils/constants.dart';

import 'geners_list.dart';

class MediaDetailsBody extends StatelessWidget {
  const MediaDetailsBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 50, 8, 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Movie Name',
                    style: TextStyle(
                        color: kMainLightColor,
                        fontFamily: 'Teko_Bold',
                        fontSize: 46.0),
                  ),
                  Text(
                    '2020 \t PG-13 \t 2h32min',
                    style: TextStyle(
                        color: Colors.white54,
                        fontFamily: 'Teko_Medium',
                        fontSize: 20.0),
                  ),
                ],
              ),
              Icon(
                Icons.favorite,
                color: kAccentColor,
                size: 40.0,
              )
            ],
          ),
          GenericsList(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Plot Summary',
                style: TextStyle(
                  color: kMainLightColor,
                  fontSize: 22.0,
                  fontFamily: 'Teko_Bold',
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Battle-hardened O’Hara leads a lively mercenary team of soldiers on a daring mission: rescue hostages from their captors in remote Africa. But as the mission goes awry and the team is stranded, O’Hara’s squad must face a bloody, brutal encounter with a gang of rebels.',
                style: TextStyle(
                  color: kSecondLightColor,
                  fontSize: 16.0,
                  fontFamily: 'Teko_Regular',
                ),
              ),
            ],
          ),
          Text(
            'Cast & Crew',
            style: TextStyle(
              color: kMainLightColor,
              fontSize: 22.0,
              fontFamily: 'Teko_Medium',
            ),
          ),
        ],
      ),
    );
  }
}
