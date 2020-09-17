/// page : 1
/// total_results : 10000
/// total_pages : 500
/// results : [{...}]

class Movie {
  int _page;
  int _totalResults;
  int _totalPages;
  List<Results> _results;

  int get page => _page;
  int get totalResults => _totalResults;
  int get totalPages => _totalPages;
  List<Results> get results => _results;

  Movie({int page, int totalResults, int totalPages, List<Results> results}) {
    _page = page;
    _totalResults = totalResults;
    _totalPages = totalPages;
    _results = results;
  }

  Movie.fromJson(dynamic json) {
    _page = json["page"];
    _totalResults = json["totalResults"];
    _totalPages = json["totalPages"];
    if (json["results"] != null) {
      _results = [];
      json["results"].forEach((v) {
        _results.add(Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["page"] = _page;
    map["totalResults"] = _totalResults;
    map["totalPages"] = _totalPages;
    if (_results != null) {
      map["results"] = _results.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// popularity : 1773.016
/// vote_count : 1582
/// video : false
/// poster_path : "/aKx1ARwG55zZ0GpRvU2WrGrCG9o.jpg"
/// id : 337401
/// adult : false
/// backdrop_path : "/zzWGRw277MNoCs3zhyG3YmYQsXv.jpg"
/// original_language : "en"
/// original_title : "Mulan"
/// genre_ids : [28,12,18,14,10752]
/// title : "Mulan"
/// vote_average : 7.6
/// overview : "When the Emperor of China issues a decree that one man per family must serve in the Imperial Chinese Army to defend the country from Huns, Hua Mulan, the eldest daughter of an honored warrior, steps in to take the place of her ailing father. She is spirited, determined and quick on her feet. Disguised as a man by the name of Hua Jun, she is tested every step of the way and must harness her innermost strength and embrace her true potential."
/// release_date : "2020-09-10"

class Results {
  double _popularity;
  int _voteCount;
  bool _video;
  String _posterPath;
  int _id;
  bool _adult;
  String _backdropPath;
  String _originalLanguage;
  String _originalTitle;
  List<int> _genreIds;
  String _title;
  double _voteAverage;
  String _overview;
  String _releaseDate;

  double get popularity => _popularity;
  int get voteCount => _voteCount;
  bool get video => _video;
  String get posterPath => _posterPath;
  int get id => _id;
  bool get adult => _adult;
  String get backdropPath => _backdropPath;
  String get originalLanguage => _originalLanguage;
  String get originalTitle => _originalTitle;
  List<int> get genreIds => _genreIds;
  String get title => _title;
  double get voteAverage => _voteAverage;
  String get overview => _overview;
  String get releaseDate => _releaseDate;

  Results(
      {double popularity,
      int voteCount,
      bool video,
      String posterPath,
      int id,
      bool adult,
      String backdropPath,
      String originalLanguage,
      String originalTitle,
      List<int> genreIds,
      String title,
      double voteAverage,
      String overview,
      String releaseDate}) {
    _popularity = popularity;
    _voteCount = voteCount;
    _video = video;
    _posterPath = posterPath;
    _id = id;
    _adult = adult;
    _backdropPath = backdropPath;
    _originalLanguage = originalLanguage;
    _originalTitle = originalTitle;
    _genreIds = genreIds;
    _title = title;
    _voteAverage = voteAverage;
    _overview = overview;
    _releaseDate = releaseDate;
  }

  Results.fromJson(dynamic json) {
    _popularity = json["popularity"];
    _voteCount = json["voteCount"];
    _video = json["video"];
    _posterPath = json["posterPath"];
    _id = json["id"];
    _adult = json["adult"];
    _backdropPath = json["backdropPath"];
    _originalLanguage = json["originalLanguage"];
    _originalTitle = json["originalTitle"];
    _genreIds = json["genreIds"] != null ? json["genreIds"].cast<int>() : [];
    _title = json["title"];
    _voteAverage = json["voteAverage"];
    _overview = json["overview"];
    _releaseDate = json["releaseDate"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["popularity"] = _popularity;
    map["voteCount"] = _voteCount;
    map["video"] = _video;
    map["posterPath"] = _posterPath;
    map["id"] = _id;
    map["adult"] = _adult;
    map["backdropPath"] = _backdropPath;
    map["originalLanguage"] = _originalLanguage;
    map["originalTitle"] = _originalTitle;
    map["genreIds"] = _genreIds;
    map["title"] = _title;
    map["voteAverage"] = _voteAverage;
    map["overview"] = _overview;
    map["releaseDate"] = _releaseDate;
    return map;
  }
}
