//import 'package:flutter/material.dart';
//import 'package:movie_night/utils/constants.dart';
//import 'package:movie_night/utils/size_config.dart';
//import 'package:movie_night/widgets/category_selector.dart';
//import 'package:movie_night/widgets/movies_swiper.dart';
//
//class PageHeaderWithSwiper extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return SliverList(
//      delegate: SliverChildListDelegate([
//        Container(
//          color: kMainDarkColor,
//          width: SizeConfig.screenWidth,
//          child: Column(
//            crossAxisAlignment: CrossAxisAlignment.start,
//            children: <Widget>[
//              PageHeader(selectedCategory: _selectedCategory),
//              Container(
//                margin: EdgeInsets.symmetric(horizontal: 0, vertical: 5.0),
//                height: SizeConfig.orientation == Orientation.portrait
//                    ? SizeConfig.screenHeight / 4
//                    : SizeConfig.screenHeight / 2,
//                child: MoviesSwiper(
//                  imgList: imgList,
//                  onIndexChange: (index) {
//                    setState(() {
//                      _current = index;
//                    });
//                  },
//                ),
//              ),
//              IndexIndicator(screenSize: _screenSize, current: _current),
//              CategorySelector(
//                height: 50,
//                categoryList: _categoryList,
//                onClick: (selectedCategory) {
//                  setState(() {
//                    _selectedCategory = selectedCategory;
//                  });
//                },
//              ),
//            ],
//          ),
//        )
//      ]),
//    );
//  }
//}
