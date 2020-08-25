import 'package:flutter/material.dart';
import 'package:movie_night/Data/API.dart';
import '../utils/constants.dart';

class FavoritePage extends StatelessWidget {
  final ApiController _controller = ApiController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: kMainDarkColor,
      child: Center(
        child: GestureDetector(
          onTap: () {
            _controller.getCategories();
          },
          child: Text(
            'Favorite',
            style: TextStyle(
              color: Colors.white,
              fontSize: 50.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
