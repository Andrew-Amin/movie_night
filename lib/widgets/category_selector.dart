import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:movie_night/utils/constants.dart';
import 'dart:convert';

class CategorySelector extends StatefulWidget {
  CategorySelector({@required this.categories});
  final List<String> categories;
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

dynamic getCategories() async {
  Response _response = await Dio().get(kMovieGenre);
  if (_response.statusCode == 200) return jsonDecode(_response.data);
  return null;
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      margin: EdgeInsets.all(10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.categories.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:
                    index == selectedIndex ? kGoldInkColor : Colors.transparent,
              ),
              child: Text(
                widget.categories[index],
                style: TextStyle(
                  color: index == selectedIndex
                      ? kMainLightColor
                      : kSecondLightColor,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
