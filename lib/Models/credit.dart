/// id : 724089
/// cast : [{"cast_id":1,"character":"Julia Mitchell","credit_id":"5f25dbe72d8ef30035d4c8d8","gender":1,"id":1312450,"name":"Melanie Zanetti","order":1,"profile_path":"/lbUQ7ilvBtWMU23reKsHg3jRmsf.jpg"},{"cast_id":2,"character":"Gabriel Emerson","credit_id":"5f25dbff0231f200381c6aca","gender":2,"id":544002,"name":"Giulio Berruti","order":2,"profile_path":"/ktPKniWGVkm6eBG7a2R7WGd96kZ.jpg"},{"cast_id":3,"character":"Paul Norris","credit_id":"5f25dec27d41aa0035679e49","gender":0,"id":2345991,"name":"James Andrew Fraser","order":3,"profile_path":null},{"cast_id":4,"character":"Christa Peterson","credit_id":"5f25dedf8d1b8e00336b32dd","gender":1,"id":2595115,"name":"Margaux Brooke","order":4,"profile_path":"/leLl5l6KnjMdg5O48FhDfB7GquI.jpg"},{"cast_id":5,"character":"Paulina","credit_id":"5f25def0d9403500355868e0","gender":1,"id":2267910,"name":"Agnes Albright","order":5,"profile_path":"/a1UVXkIFONmwjr0Cxydc0jQHPFq.jpg"},{"cast_id":6,"character":"Professor Tara Chakravartty","credit_id":"5f25df10dbbb420033e0416b","gender":1,"id":109024,"name":"Purva Bedi","order":6,"profile_path":"/oppODJvFwISpFnOfhSc2sB2b4Zq.jpg"},{"cast_id":7,"character":"Soraya","credit_id":"5f25df26d94035003757ec12","gender":1,"id":206423,"name":"Sahar Bibiyan","order":7,"profile_path":"/7SlWvJbXlnwbMeJSWMdzmI8wRAC.jpg"},{"cast_id":8,"character":"Professor Robert Mwangi","credit_id":"5f25df45869e7500385c715d","gender":0,"id":1784954,"name":"Cedric Cannon","order":8,"profile_path":null},{"cast_id":9,"character":"Professor Jeremy Martin","credit_id":"5f25df5ce194b00038906133","gender":2,"id":1326237,"name":"Ned Van Zandt","order":9,"profile_path":"/lJK2Bk79xhP133piZ03p4d6rsD0.jpg"}]
/// crew : [{"credit_id":"5f275762e267de0036001dd5","department":"Camera","gender":2,"id":22143,"job":"Director of Photography","name":"Denis Maloney","profile_path":null},{"credit_id":"5f25e0067d41aa003567a0bd","department":"Production","gender":1,"id":41654,"job":"Casting","name":"Lindsay Chag","profile_path":null},{"credit_id":"5f25df960231f200371b0336","department":"Directing","gender":0,"id":935563,"job":"Director","name":"Tosca Musk","profile_path":"/usR5NspRlWgXKUe9qVsCtTCpe4l.jpg"},{"credit_id":"5f25dfc57c6de300361c794e","department":"Production","gender":0,"id":935563,"job":"Executive Producer","name":"Tosca Musk","profile_path":"/usR5NspRlWgXKUe9qVsCtTCpe4l.jpg"},{"credit_id":"5f25e0212ac49900356637ce","department":"Art","gender":0,"id":1412043,"job":"Production Design","name":"Traci Hays","profile_path":null},{"credit_id":"5f25dff2d940350035586c0e","department":"Editing","gender":0,"id":1572781,"job":"Editor","name":"Margie Goodspeed","profile_path":null},{"credit_id":"5f25dfb47c6de300351c5dfa","department":"Production","gender":0,"id":1845009,"job":"Producer","name":"Michael Buttiglieri","profile_path":null},{"credit_id":"5f275793869e750036680f1f","department":"Writing","gender":0,"id":2693030,"job":"Novel","name":"Sylvain Reynard","profile_path":null}]

class Credit {
  int _id;
  List<Cast> _cast;
  List<Crew> _crew;

  int get id => _id;
  List<Cast> get cast => _cast;
  List<Crew> get crew => _crew;

  Credit({int id, List<Cast> cast, List<Crew> crew}) {
    _id = id;
    _cast = cast;
    _crew = crew;
  }

  Credit.fromJson(dynamic json) {
    _id = json["id"];
    if (json["cast"] != null) {
      _cast = [];
      json["cast"].forEach((v) {
        _cast.add(Cast.fromJson(v));
      });
    }
    if (json["crew"] != null) {
      _crew = [];
      json["crew"].forEach((v) {
        _crew.add(Crew.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    if (_cast != null) {
      map["cast"] = _cast.map((v) => v.toJson()).toList();
    }
    if (_crew != null) {
      map["crew"] = _crew.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// credit_id : "5f275762e267de0036001dd5"
/// department : "Camera"
/// gender : 2
/// id : 22143
/// job : "Director of Photography"
/// name : "Denis Maloney"
/// profile_path : null

class Crew {
  String _creditId;
  String _department;
  int _gender;
  int _id;
  String _job;
  String _name;
  dynamic _profilePath;

  String get creditId => _creditId;
  String get department => _department;
  int get gender => _gender;
  int get id => _id;
  String get job => _job;
  String get name => _name;
  dynamic get profilePath => _profilePath;

  Crew(
      {String creditId,
      String department,
      int gender,
      int id,
      String job,
      String name,
      dynamic profilePath}) {
    _creditId = creditId;
    _department = department;
    _gender = gender;
    _id = id;
    _job = job;
    _name = name;
    _profilePath = profilePath;
  }

  Crew.fromJson(dynamic json) {
    _creditId = json["creditId"];
    _department = json["department"];
    _gender = json["gender"];
    _id = json["id"];
    _job = json["job"];
    _name = json["name"];
    _profilePath = json["profilePath"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["creditId"] = _creditId;
    map["department"] = _department;
    map["gender"] = _gender;
    map["id"] = _id;
    map["job"] = _job;
    map["name"] = _name;
    map["profilePath"] = _profilePath;
    return map;
  }
}

/// cast_id : 1
/// character : "Julia Mitchell"
/// credit_id : "5f25dbe72d8ef30035d4c8d8"
/// gender : 1
/// id : 1312450
/// name : "Melanie Zanetti"
/// order : 1
/// profile_path : "/lbUQ7ilvBtWMU23reKsHg3jRmsf.jpg"

class Cast {
  int _castId;
  String _character;
  String _creditId;
  int _gender;
  int _id;
  String _name;
  int _order;
  String _profilePath;

  int get castId => _castId;
  String get character => _character;
  String get creditId => _creditId;
  int get gender => _gender;
  int get id => _id;
  String get name => _name;
  int get order => _order;
  String get profilePath => _profilePath;

  Cast(
      {int castId,
      String character,
      String creditId,
      int gender,
      int id,
      String name,
      int order,
      String profilePath}) {
    _castId = castId;
    _character = character;
    _creditId = creditId;
    _gender = gender;
    _id = id;
    _name = name;
    _order = order;
    _profilePath = profilePath;
  }

  Cast.fromJson(dynamic json) {
    _castId = json["castId"];
    _character = json["character"];
    _creditId = json["creditId"];
    _gender = json["gender"];
    _id = json["id"];
    _name = json["name"];
    _order = json["order"];
    _profilePath = json["profilePath"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["castId"] = _castId;
    map["character"] = _character;
    map["creditId"] = _creditId;
    map["gender"] = _gender;
    map["id"] = _id;
    map["name"] = _name;
    map["order"] = _order;
    map["profilePath"] = _profilePath;
    return map;
  }
}
