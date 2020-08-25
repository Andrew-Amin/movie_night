import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:movie_night/utils/constants.dart';

class ApiController {
  dynamic getCategories() async {
    try {
      Response _response = await Dio().get(kMovieGenre);
      if (_response.statusCode == 200)
        return jsonDecode(_response.data).toString();
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
}

//static dynamic getPopularMovies() async {
//try{
//
//}catch(e){
//print(e.toString());
//}
//}
//}
