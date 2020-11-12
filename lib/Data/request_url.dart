class RequestUrl {
  String apiKey;

  RequestUrl(this.apiKey);

  String popularMoviesUrl(pageNumber) {
    return 'https://api.themoviedb.org/3/movie/popular?api_key=$apiKey&language=en-US&page=$pageNumber';
  }

  String topRatedMoviesUrl(pageNumber) {
    return 'https://api.themoviedb.org/3/movie/top_rated?api_key=$apiKey&language=en-US&page=$pageNumber';
  }

  String upcomingMoviesUrl(pageNumber) {
    return 'https://api.themoviedb.org/3/movie/upcoming?api_key=$apiKey&language=en-US&page=$pageNumber';
  }

  String lastMoviesUrl(pageNumber) {
    return 'https://api.themoviedb.org/3/movie/latest?api_key=$apiKey&language=en-US&page=$pageNumber';
  }

  String newPlayingMoviesUrl(pageNumber) {
    return 'https://api.themoviedb.org/3/movie/now_playing?api_key=$apiKey&language=en-US&page=$pageNumber';
  }
}
