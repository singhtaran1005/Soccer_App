class SoccerMatch {
  Fixture fixture;
  Teams home;
  Teams away;
  Goals goal;
  SoccerMatch(this.fixture, this.home, this.away, this.goal);
  factory SoccerMatch.fromjson(Map<String, dynamic> json) {
    return SoccerMatch(
        Fixture.fromjson(json['fixture']),
        Teams.fromjson(json['teams']['home']),
        Teams.fromjson(json['teams']['away']),
        Goals.fromJson(json['goals']));
  }
}

class Fixture {
  int id;
  int date;
  Status status;
  Fixture(this.id, this.date, this.status);
  factory Fixture.fromjson(Map<String, dynamic> json) {
    return Fixture(json['id'], json['date'], Status.fromjson(json['status']));
  }
}

class Status {
  int elapsedTime;
  String long;
  Status(this.elapsedTime, this.long);
  factory Status.fromjson(Map<String, dynamic> json) {
    return Status(json['elapsedTime'], json['long']);
  }
}

class Teams {
  int id;
  String name;
  String logUrl;
  bool winner;
  Teams(this.id, this.name, this.logUrl, this.winner);
  factory Teams.fromjson(Map<String, dynamic> json) {
    return Teams(json['id'], json['name'], json['logUrl'], json['winner']);
  }
}

// here we will store data of goals
class Goals {
  int home;
  int away;
  Goals(this.home, this.away);

  factory Goals.fromJson(Map<String, dynamic> json) {
    return Goals(json['home'], json['away']);
  }
}
