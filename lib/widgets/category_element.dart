import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_night/utils/constants.dart';

class CategoryElement extends StatefulWidget {
  const CategoryElement({this.lastIndex});

  final int lastIndex;
  @override
  _CategoryElementState createState() => _CategoryElementState();
}

class _CategoryElementState extends State<CategoryElement> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return SizedBox(
            width: 110.0,
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
                  ),
                ),
                Text(
                  'Andrew Amin',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16.0,
                    fontFamily: 'Teko_Regular',
                  ),
                ),
                Text(
                  'Spider Man',
                  style: TextStyle(
                    color: kSecondLightColor,
                    fontSize: 14.0,
                    fontFamily: 'Teko_Regular',
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
