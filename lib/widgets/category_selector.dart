import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_night/utils/constants.dart';

typedef ValueChanged<T> = void Function(T value);

class CategorySelector extends StatefulWidget {
  CategorySelector({
    @required this.categories,
    this.height = 50,
    this.onClick,
  });
  final List<String> categories;
  final double height;
  final ValueChanged<String> onClick;
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      padding: EdgeInsets.all(7.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.categories.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
                if (widget.onClick != null)
                  widget.onClick(widget.categories[index]);
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Flexible(
                    child: Text(
                      widget.categories[index],
                      style: TextStyle(
                        color: index == selectedIndex
                            ? Colors.white70
                            : kSecondLightColor,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                  Container(
                    height: 4,
                    width: 30,
                    margin: EdgeInsets.only(top: 5.0),
                    //padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: index == selectedIndex
                          ? kGoldInkColor
                          : Colors.transparent,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
