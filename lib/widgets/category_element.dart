import 'package:flutter/material.dart';
GestureDetector(
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