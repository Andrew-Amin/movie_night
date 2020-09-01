import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_night/utils/constants.dart';
import 'package:movie_night/widgets/category_element.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Container(
      color: kMainDarkColor,
      child: ListView(
        children: <Widget>[
          Stack(
            alignment: Alignment.bottomCenter,
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
                height: 250,
                width: _screenSize.width,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(50)),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
                    ),
                  ),
                ),
                child: GestureDetector(
                  onTap: () {
                    //todo:perform play video operation
                  },
                  child: Icon(
                    Icons.play_circle_filled,
                    color: kMainLightColor,
                    size: 80,
                  ),
                ),
              ),
              Container(
                height: 130,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(48)),
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
              Positioned(
                bottom: -30,
                right: 0,
                child: Material(
                  elevation: 20.0,
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
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 10.0),
            child: Row(
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
          ),
          Container(
            child: Text(
              'Action',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 20.0,
                fontFamily: 'Teko_Regular',
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                color: kGoldInkColor,
              ),
            ),
            padding: EdgeInsets.all(5.0),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
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
          ),
          Text(
            'Cast & Crew',
            style: TextStyle(
              color: kMainLightColor,
              fontSize: 22.0,
              fontFamily: 'Teko_Medium',
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0, bottom: 70.0),
            child: CategoryElement(),
          )
        ],
      ),
    );
  }
}
