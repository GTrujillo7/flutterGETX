// To parse this JSON data, do
//
//     final character = characterFromMap(jsonString);

import 'dart:convert';

class Character {
  Character({
    this.info,
    this.results,
  });

  Info info;
  List<Result> results;

  factory Character.fromJson(String str) => Character.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Character.fromMap(Map<String, dynamic> json) => Character(
        info: Info.fromMap(json["info"]),
        results:
            List<Result>.from(json["results"].map((x) => Result.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "info": info.toMap(),
        "results": List<dynamic>.from(results.map((x) => x.toMap())),
      };
}

class Info {
  Info({
    this.count,
    this.pages,
    this.next,
    this.prev,
  });

  int count;
  int pages;
  String next;
  dynamic prev;

  factory Info.fromJson(String str) => Info.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Info.fromMap(Map<String, dynamic> json) => Info(
        count: json["count"],
        pages: json["pages"],
        next: json["next"],
        prev: json["prev"],
      );

  Map<String, dynamic> toMap() => {
        "count": count,
        "pages": pages,
        "next": next,
        "prev": prev,
      };
}

class Result {
  Result({
    this.id,
    this.name,
    this.status,
    this.species,
    this.type,
    this.gender,
    this.origin,
    this.location,
    this.image,
    this.episode,
    this.url,
    this.created,
  });

  int id;
  String name;
  String status;
  Species species;
  String type;
  Gender gender;
  Location origin;
  Location location;
  String image;
  List<String> episode;
  String url;
  DateTime created;

  factory Result.fromJson(String str) => Result.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Result.fromMap(Map<String, dynamic> json) => Result(
        id: json["id"],
        name: json["name"],
        status: json["status"],
        species: speciesValues.map[json["species"]],
        type: json["type"],
        gender: genderValues.map[json["gender"]],
        origin: Location.fromMap(json["origin"]),
        location: Location.fromMap(json["location"]),
        image: json["image"],
        episode: List<String>.from(json["episode"].map((x) => x)),
        url: json["url"],
        created: DateTime.parse(json["created"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "status": statusValues.reverse[status],
        "species": speciesValues.reverse[species],
        "type": type,
        "gender": genderValues.reverse[gender],
        "origin": origin.toMap(),
        "location": location.toMap(),
        "image": image,
        "episode": List<dynamic>.from(episode.map((x) => x)),
        "url": url,
        "created": created.toIso8601String(),
      };
}

enum Gender { MALE, FEMALE, UNKNOWN }

final genderValues = EnumValues(
    {"Female": Gender.FEMALE, "Male": Gender.MALE, "unknown": Gender.UNKNOWN});

class Location {
  Location({
    this.name,
    this.url,
  });

  String name;
  String url;

  factory Location.fromJson(String str) => Location.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Location.fromMap(Map<String, dynamic> json) => Location(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "url": url,
      };
}

enum Species { HUMAN, ALIEN }

final speciesValues =
    EnumValues({"Alien": Species.ALIEN, "Human": Species.HUMAN});

enum Status { ALIVE, UNKNOWN, DEAD }

final statusValues = EnumValues(
    {"Alive": Status.ALIVE, "Dead": Status.DEAD, "unknown": Status.UNKNOWN});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
