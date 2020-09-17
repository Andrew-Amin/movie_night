import 'package:flutter/material.dart';
import 'package:movie_night/utils/constants.dart';

class MovieCard extends StatefulWidget {
  final String imageUrl;
  const MovieCard({
    @required this.imageUrl,
  });
  @override
  _MovieCardState createState() => _MovieCardState();
}

class _MovieCardState extends State<MovieCard> {
  IconData _likeIcon = Icons.favorite_border;
  Color _likeIconColor = kSecondLightColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      height: 200,
      width: 200,
      padding: EdgeInsets.all(7.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            _likeIcon = _likeIcon == Icons.favorite_border
                ? Icons.favorite
                : Icons.favorite_border;
            _likeIconColor = _likeIconColor == kSecondLightColor
                ? kAccentColor
                : kSecondLightColor;
            //TODO:Post favorite show
          });
        },
        child: Icon(
          _likeIcon,
          color: _likeIconColor,
          size: 30,
        ),
      ),
      decoration: BoxDecoration(
        color: kSecondDarkColor,
        borderRadius: BorderRadius.circular(7.0),
        image: DecorationImage(
          image: NetworkImage(widget.imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
