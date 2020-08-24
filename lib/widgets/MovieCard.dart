import 'package:flutter/material.dart';
import 'package:movie_night/utils/constants.dart';

class MovieCard extends StatelessWidget {
  final String imageUrl;

  const MovieCard({@required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
      decoration: BoxDecoration(
        color: kMainLightColor,
        borderRadius: BorderRadius.circular(7.0),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
