import 'package:flutter/material.dart';
import '../utils/constants.dart';

class TopRatedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LastCard();
  }
}

class LastCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      child: Container(
        color: Colors.black.withOpacity(0.5),
      ),
      margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
      decoration: BoxDecoration(
        color: kMainLightColor,
        borderRadius: BorderRadius.circular(7.0),
        image: DecorationImage(
          image: NetworkImage(
            'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
