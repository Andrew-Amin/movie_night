import 'package:flutter/material.dart';
import 'package:movie_night/Models/movie.dart';
import 'package:movie_night/utils/constants.dart';
import 'package:movie_night/widgets/movie_card.dart';

class MoviesGrid extends StatelessWidget {
  const MoviesGrid({
    Key key,
    @required Future future,
  })  : _future = future,
        super(key: key);

  final Future<Movie> _future;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: FutureBuilder<Movie>(
        future: _future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1.3,
                  mainAxisSpacing: 5.0,
                  crossAxisSpacing: 5.0),
              itemCount: 20,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              primary: false,
              itemBuilder: (context, index) {
                return MovieCard(
                    image: (snapshot.data.results[index].posterPath != null)
                        ? NetworkImage(kCroppedPosterBaseURL +
                            snapshot.data.results[index].posterPath)
                        : AssetImage('images/placeholder.png'));
              },
            );
          } else {
            return Center(
              child: Text('Loading ...',
                  style: TextStyle(
                      color: kSecondLightColor,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold)),
            );
          }
        },
      ),
    );
  }
}
