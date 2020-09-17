import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_night/utils/constants.dart';
import 'package:movie_night/widgets/index_indicator.dart';
import 'package:movie_night/widgets/movie_card.dart';
import 'package:movie_night/widgets/movies_swiper.dart';
import 'package:movie_night/widgets/category_selector.dart';
import 'package:movie_night/widgets/page_header.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

class MoviesPage extends StatefulWidget {
  @override
  _MoviesPageState createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  int _current = 0;
  String _selectedCategory = 'test';

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    Orientation _screenOrientation = MediaQuery.of(context).orientation;
    return Container(
      color: kMainDarkColor,
      child: CustomScrollView(
        slivers: <Widget>[
          buildHeaderSliverList(_screenSize, _screenOrientation),
          buildMoviesCardsSliverGrid(_screenSize),
          buildFooterSliverList(),
        ],
      ),
    );
  }

  SliverList buildFooterSliverList() {
    return SliverList(
      delegate: SliverChildListDelegate([
        Image.asset(
          'images/logo.png',
        )
      ]),
    );
  }

  SliverGrid buildMoviesCardsSliverGrid(Size _screenSize) {
    return SliverGrid.extent(
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      maxCrossAxisExtent: _screenSize.width / 2,
      children: <Widget>[
        //todo : implement a stream builder
        MovieCard(
          imageUrl:
              'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
        ),
        MovieCard(
          imageUrl:
              'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
        ),
        MovieCard(
          imageUrl:
              'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
        ),
        MovieCard(
          imageUrl:
              'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
        ),
        MovieCard(
          imageUrl:
              'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
        ),
        MovieCard(
          imageUrl:
              'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
        ),
        MovieCard(
          imageUrl:
              'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
        ),
        MovieCard(
          imageUrl:
              'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
        ),
        MovieCard(
          imageUrl:
              'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
        ),
        MovieCard(
          imageUrl:
              'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
        ),
      ],
    );
  }

  SliverList buildHeaderSliverList(
      Size _screenSize, Orientation _screenOrientation) {
    return SliverList(
      delegate: SliverChildListDelegate([
        Container(
          color: kMainDarkColor,
          width: _screenSize.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              PageHeader(selectedCategory: _selectedCategory),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 0, vertical: 5.0),
                height: _screenOrientation == Orientation.portrait
                    ? _screenSize.height / 4
                    : _screenSize.height / 2,
                child: MoviesSwiper(
                  imgList: imgList,
                  onIndexChange: (index) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
              ),
              IndexIndicator(screenSize: _screenSize, current: _current),
              CategorySelector(
                height: 50,
                onClick: (selectedCategory) {
                  setState(() {
                    _selectedCategory = selectedCategory;
                  });
                },
              ),
            ],
          ),
        )
      ]),
    );
  }
}
