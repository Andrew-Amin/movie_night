import 'package:dio/dio.dart';
import 'package:movie_night/Models/categories.dart';
import 'package:movie_night/Models/movie.dart';
import 'package:movie_night/utils/constants.dart';

class ApiController {
  Future<Categories> getCategories() async {
    try {
      Response _response = await Dio().get(kMovieGenre);
      if (_response.statusCode == 200) {
        return Categories.fromJson(_response.data);
      } else {
        return null;
      }
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<Movie> getMoviesByCategory(String category) async {
    try {
      Response _response = await Dio().get(category);
      if (_response.statusCode == 200) {
        return Movie.fromJson(_response.data);
      } else {
        return null;
      }
    } catch (e) {
      try {
        Response _response = await Dio().get(category);
        if (_response.statusCode == 200) {
          return Movie.fromJsonWithDate(_response.data);
        } else {
          return null;
        }
      } catch (e) {
        print(e.toString());
      }
      return null;
    }
  }
}
