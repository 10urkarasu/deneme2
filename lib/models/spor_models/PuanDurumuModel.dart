import 'dart:convert';
/// result : [{"rank":1,"draw":8,"lose":2,"win":21,"play":31,"point":71,"goalfor":59,"goalagainst":27,"goaldistance":32,"team":"Trabzonspor"},{"rank":2,"draw":7,"lose":7,"win":17,"play":31,"point":58,"goalfor":51,"goalagainst":33,"goaldistance":18,"team":"İttifak Holding Konyaspor"},{"rank":3,"draw":8,"lose":7,"win":16,"play":31,"point":56,"goalfor":54,"goalagainst":35,"goaldistance":19,"team":"Fenerbahçe"},{"rank":4,"draw":7,"lose":9,"win":15,"play":31,"point":52,"goalfor":57,"goalagainst":48,"goaldistance":9,"team":"A. Alanyaspor"},{"rank":5,"draw":9,"lose":8,"win":13,"play":30,"point":48,"goalfor":46,"goalagainst":32,"goaldistance":14,"team":"Adana Demirspor"}]

PuanDurumuModel puanDurumuModelFromJson(String str) => PuanDurumuModel.fromJson(json.decode(str));
String puanDurumuModelToJson(PuanDurumuModel data) => json.encode(data.toJson());
class PuanDurumuModel {
  PuanDurumuModel({
      List<Result>? result,}){
    _result = result;
}

  PuanDurumuModel.fromJson(dynamic json) {
    if (json['result'] != null) {
      _result = [];
      json['result'].forEach((v) {
        _result?.add(Result.fromJson(v));
      });
    }
  }
  List<Result>? _result;
PuanDurumuModel copyWith({  List<Result>? result,
}) => PuanDurumuModel(  result: result ?? _result,
);
  List<Result>? get result => _result;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_result != null) {
      map['result'] = _result?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// rank : 1
/// draw : 8
/// lose : 2
/// win : 21
/// play : 31
/// point : 71
/// goalfor : 59
/// goalagainst : 27
/// goaldistance : 32
/// team : "Trabzonspor"

Result resultFromJson(String str) => Result.fromJson(json.decode(str));
String resultToJson(Result data) => json.encode(data.toJson());
class Result {
  Result({
      int? rank, 
      int? draw, 
      int? lose, 
      int? win, 
      int? play, 
      int? point, 
      int? goalfor, 
      int? goalagainst, 
      int? goaldistance, 
      String? team,}){
    _rank = rank;
    _draw = draw;
    _lose = lose;
    _win = win;
    _play = play;
    _point = point;
    _goalfor = goalfor;
    _goalagainst = goalagainst;
    _goaldistance = goaldistance;
    _team = team;
}

  Result.fromJson(dynamic json) {
    _rank = json['rank'];
    _draw = json['draw'];
    _lose = json['lose'];
    _win = json['win'];
    _play = json['play'];
    _point = json['point'];
    _goalfor = json['goalfor'];
    _goalagainst = json['goalagainst'];
    _goaldistance = json['goaldistance'];
    _team = json['team'];
  }
  int? _rank;
  int? _draw;
  int? _lose;
  int? _win;
  int? _play;
  int? _point;
  int? _goalfor;
  int? _goalagainst;
  int? _goaldistance;
  String? _team;
Result copyWith({  int? rank,
  int? draw,
  int? lose,
  int? win,
  int? play,
  int? point,
  int? goalfor,
  int? goalagainst,
  int? goaldistance,
  String? team,
}) => Result(  rank: rank ?? _rank,
  draw: draw ?? _draw,
  lose: lose ?? _lose,
  win: win ?? _win,
  play: play ?? _play,
  point: point ?? _point,
  goalfor: goalfor ?? _goalfor,
  goalagainst: goalagainst ?? _goalagainst,
  goaldistance: goaldistance ?? _goaldistance,
  team: team ?? _team,
);
  int? get rank => _rank;
  int? get draw => _draw;
  int? get lose => _lose;
  int? get win => _win;
  int? get play => _play;
  int? get point => _point;
  int? get goalfor => _goalfor;
  int? get goalagainst => _goalagainst;
  int? get goaldistance => _goaldistance;
  String? get team => _team;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['rank'] = _rank;
    map['draw'] = _draw;
    map['lose'] = _lose;
    map['win'] = _win;
    map['play'] = _play;
    map['point'] = _point;
    map['goalfor'] = _goalfor;
    map['goalagainst'] = _goalagainst;
    map['goaldistance'] = _goaldistance;
    map['team'] = _team;
    return map;
  }

}