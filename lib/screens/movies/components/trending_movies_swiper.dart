import 'package:flutter/material.dart';
import 'package:movie_night/Models/movie.dart';
import 'package:movie_night/utils/size_config.dart';
import 'package:movie_night/widgets/movies_swiper.dart';
import 'package:movie_night/widgets/index_indicator.dart';

class TrendingMoviesSwiper extends StatefulWidget {
  final Future future;
  TrendingMoviesSwiper({Key key, this.future}) : super(key: key);

  @override
  _TrendingMoviesSwiperState createState() => _TrendingMoviesSwiperState();
}

class _TrendingMoviesSwiperState extends State<TrendingMoviesSwiper> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Movie>(
        future: widget.future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 0, vertical: 5.0),
                  height: SizeConfig.orientation == Orientation.portrait
                      ? SizeConfig.screenHeight / 4
                      : SizeConfig.screenHeight / 2,
                  child: MoviesSwiper(
                    moviesList: snapshot.data.results,
                    onIndexChange: (index) {
                      setState(() {
                        _current = index;
                      });
                    },
                  ),
                ),
                IndexIndicator(
                    length: snapshot.data.results.length, current: _current),
              ],
            );
          } else
            return CircularProgressIndicator();
        });
  }
}
