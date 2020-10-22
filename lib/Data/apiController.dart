import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:movie_night/Models/categories.dart';
import 'package:movie_night/Models/movie.dart';
import 'package:movie_night/Models/movies.dart';
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

  Future<Movie> getPopularMovies() async {
    try {
      Response _response = await Dio().get(kPopularMovies);
      if (_response.statusCode == 200) {
        return Movie.fromJson(_response.data);
      } else {
        return null;
      }
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<Movie> getTopRatedMovies() async {
    try {
      Response _response = await Dio().get(kTopRatedMovies);
      if (_response.statusCode == 200) {
        return Movie.fromJson(_response.data);
      } else {
        return null;
      }
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<Movie> getUpcomingMovies() async {
    try {
      Response _response = await Dio().get(kUpcomingMovies);
      if (_response.statusCode == 200) {
        return Movie.fromJson(_response.data);
      } else {
        return null;
      }
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<Movie> getNewPlayingMovies() async {
    try {
      Response _response = await Dio().get(kNewPlayingMovies);
      if (_response.statusCode == 200) {
        return Movie.fromJson(_response.data);
      } else {
        return null;
      }
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}

//static dynamic getPopularMovies() async {
//try{
//
//}catch(e){
//print(e.toString());
//}
//}
//}
