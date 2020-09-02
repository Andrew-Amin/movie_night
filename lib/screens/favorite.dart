import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:movie_night/Data/API.dart';
import '../utils/constants.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

class FavoritePage extends StatelessWidget {
  final ApiController _controller = ApiController();

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    Orientation _screenOrientation = MediaQuery.of(context).orientation;
    return Container(
      width: _screenSize.width,
      height: _screenSize.height,
      color: kMainDarkColor,
      child: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(
              'Favorite',
              style: TextStyle(
                  color: kMainLightColor.withOpacity(0.7),
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Teko_Bold',
                  letterSpacing: 1.2),
            ),
          ),
          Container(
            height: _screenOrientation == Orientation.portrait
                ? _screenSize.height * 0.8
                : _screenSize.height,
            child: Swiper(
              duration: 2000,
              autoplayDelay: 5000,
              fade: 0.1,
              autoplay: true,
              itemBuilder: (context, int index) {
                return Column(
                  children: <Widget>[
                    ClipRRect(
                      child: Image.network(
                        imgList[index],
                        fit: BoxFit.cover,
                        height: _screenSize.height * 0.6,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    Text(
                      "Movie # $index",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: kMainLightColor,
                        fontSize: 35.0,
                        fontFamily: 'Teko_Medium',
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  ],
                );
              },
              itemCount: imgList.length,
              viewportFraction: 0.75,
              scale: 0.8,
            ),
          ),
        ],
      ),
    );
  }
}
