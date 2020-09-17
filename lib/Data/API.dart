import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:movie_night/Models/categories.dart';
import 'package:movie_night/utils/constants.dart';

class ApiController {
  Future<Categories> getCategories() async {
    try {
      Response _response = await Dio().get(kMovieGenre);
      if (_response.statusCode == 200) {
        // print(_response.data.toString());
        return Categories.fromJson(_response.data);
      } else {
        return null;
      }
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  dynamic getPopularMovies() async {
    try {
      Response _response = await Dio().get(kPopularMovies);
      if (_response.statusCode == 200) return jsonDecode(_response.data);
    } catch (e) {
      print(e.toString());
    }
  }

  dynamic getTopRatedMovies() async {
    try {
      Response _response = await Dio().get(kTopRatedMovies);
      if (_response.statusCode == 200) return jsonDecode(_response.data);
    } catch (e) {
      print(e.toString());
    }
  }

  dynamic getUpcomingMovies() async {
    try {
      Response _response = await Dio().get(kUpcomingMovies);
      if (_response.statusCode == 200) return jsonDecode(_response.data);
    } catch (e) {
      print(e.toString());
    }
  }

  dynamic getLastMovies() async {
    try {
      Response _response = await Dio().get(kLastMovies);
      if (_response.statusCode == 200) return jsonDecode(_response.data);
    } catch (e) {
      print(e.toString());
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
