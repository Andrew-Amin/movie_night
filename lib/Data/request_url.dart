import '../utils/constants.dart';

class RequestUrl {
  static String popularMoviesUrl(int pageNumber) {
    return 'https://api.themoviedb.org/3/movie/popular?api_key=$kApiKey&language=en-US&page=$pageNumber';
  }

  static String topRatedMoviesUrl(int pageNumber) {
    return 'https://api.themoviedb.org/3/movie/top_rated?api_key=$kApiKey&language=en-US&page=$pageNumber';
  }

  static String upcomingMoviesUrl(int pageNumber) {
    return 'https://api.themoviedb.org/3/movie/upcoming?api_key=$kApiKey&language=en-US&page=$pageNumber';
  }

  static String lastMoviesUrl(int pageNumber) {
    return 'https://api.themoviedb.org/3/movie/latest?api_key=$kApiKey&language=en-US&page=$pageNumber';
  }

  static String newPlayingMoviesUrl(int pageNumber) {
    return 'https://api.themoviedb.org/3/movie/now_playing?api_key=$kApiKey&language=en-US&page=$pageNumber';
  }
}
