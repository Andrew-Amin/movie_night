import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_night/widgets/MovieCard.dart';

class CategoryElement extends StatefulWidget {
  const CategoryElement({@required this.lastIndex});

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
          return Container(
            width: 150.0,
            child: MovieCard(
                imageUrl:
                    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80'),
          );
        },
      ),
    );
  }
}
