import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:movie_night/Models/showCategory.dart';
import 'package:movie_night/utils/constants.dart';

class ApiController {
  Future<List<ShowCategory>> getCategories() async {
    try {
      Response _response = await Dio().get(kMovieGenre);
      return _response.data;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  List<ShowCategory> parsePhotos(String responseBody) {
    final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

    return parsed
        .map<ShowCategory>((json) => ShowCategory.fromJson(json))
        .toList();
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
