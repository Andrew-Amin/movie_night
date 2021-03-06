import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:movie_night/Data/apiController.dart';
import 'package:movie_night/Data/request_url.dart';
import 'package:movie_night/Models/movie.dart';
import 'package:movie_night/ui/global/widgets/category_selector.dart';
import 'package:movie_night/ui/global/widgets/page_header.dart';
import 'package:movie_night/utils/constants.dart';
import 'package:movie_night/utils/size_config.dart';

import 'components/footer.dart';
import 'components/movie_grid.dart';
import 'components/trending_movies_swiper.dart';

class MoviesPage extends StatefulWidget {
  @override
  _MoviesPageState createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  List<String> _categoryList = [
    'Popular',
    'Top Rated',
    'Upcoming',
    'New Playing',
  ];
  String _selectedCategory;
  ApiController _apiController = ApiController();
  Future<Movie> _movieFuture;
  bool _showMore = false;
  int pageNumber = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectedCategory = _categoryList[0];
    _movieFuture = _apiController.getMoviesByCategory(kPopularMovies);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Container(
      color: kMainDarkColor,
      child: CustomScrollView(
        slivers: <Widget>[
          buildHeaderSliverList(),
          MoviesGrid(future: _movieFuture),
          SliverPageFooter(
            onClick: () => _loadMoreMovies(),
            show: true,
          )
        ],
      ),
    );
  }

  SliverList buildHeaderSliverList() {
    return SliverList(
      delegate: SliverChildListDelegate([
        Container(
          color: kMainDarkColor,
          width: SizeConfig.screenWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              PageHeader(selectedCategory: _selectedCategory),
              TrendingMoviesSwiper(
                  future: _apiController.getMoviesByCategory(kTrendingMovies)),
              CategorySelector(
                height: 50,
                categoryList: _categoryList,
                onClick: (selectedCategory) {
                  setState(() {
                    _selectedCategory = selectedCategory;
                    _movieFuture = _selectMoviesCategory(_selectedCategory);
                  });
                },
              ),
            ],
          ),
        )
      ]),
    );
  }

  Future<Movie> _selectMoviesCategory(String category) {
    switch (category) {
      case 'Top Rated':
        return _apiController
            .getMoviesByCategory(RequestUrl.topRatedMoviesUrl(pageNumber));
      case 'Upcoming':
        return _apiController
            .getMoviesByCategory(RequestUrl.upcomingMoviesUrl(pageNumber));
      case 'New Playing':
        return _apiController
            .getMoviesByCategory(RequestUrl.newPlayingMoviesUrl(pageNumber));
      default:
        return _apiController
            .getMoviesByCategory(RequestUrl.popularMoviesUrl(pageNumber));
    }
  }

  void _loadMoreMovies() {
    setState(() {
      pageNumber++;
    });
  }
}
