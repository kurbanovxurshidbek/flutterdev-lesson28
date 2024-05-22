// To parse this JSON data, do
//
//     final randomUserListRes = randomUserListResFromJson(jsonString);

import 'dart:convert';
import 'package:ngdemo24/domain/entities/random_users_entity.dart';

RandomUsersModel randomUsersResFromJson(String str) =>
    RandomUsersModel.fromJson(json.decode(str));

String randomUsersResToJson(RandomUsersModel data) =>
    json.encode(data.toJson());

class RandomUsersModel extends RandomUsersEntity {
  RandomUsersModel({required super.results, required super.info});

  factory RandomUsersModel.fromJson(Map<String, dynamic> json) =>
      RandomUsersModel(
        results: List<RandomUserModel>.from(
            json["results"].map((x) => RandomUserModel.fromJson(x))),
        info: InfoModel.fromJson(json["info"]),
      );

  Map<String, dynamic> toJson() => {
        "results": List<dynamic>.from(results.map((x) => x)),
        "info": info,
      };
}

class InfoModel extends InfoEntity {
  InfoModel(
      {required super.seed,
      required super.results,
      required super.page,
      required super.version});

  factory InfoModel.fromJson(Map<String, dynamic> json) => InfoModel(
        seed: json["seed"],
        results: json["results"],
        page: json["page"],
        version: json["version"],
      );

  Map<String, dynamic> toJson() => {
        "seed": seed,
        "results": results,
        "page": page,
        "version": version,
      };
}

class RandomUserModel extends RandomUserEntity {
  RandomUserModel(
      {required super.gender,
      required super.name,
      required super.location,
      required super.email,
      required super.login,
      required super.dob,
      required super.registered,
      required super.phone,
      required super.cell,
      required super.id,
      required super.picture,
      required super.nat});

  factory RandomUserModel.fromJson(Map<String, dynamic> json) =>
      RandomUserModel(
        gender: genderValues.map[json["gender"]]!,
        name: NameModel.fromJson(json["name"]),
        location: LocationModel.fromJson(json["location"]),
        email: json["email"],
        login: LoginModel.fromJson(json["login"]),
        dob: DobModel.fromJson(json["dob"]),
        registered: DobModel.fromJson(json["registered"]),
        phone: json["phone"],
        cell: json["cell"],
        id: IdModel.fromJson(json["id"]),
        picture: PictureModel.fromJson(json["picture"]),
        nat: json["nat"],
      );

  Map<String, dynamic> toJson() => {
        "gender": genderValues.reverse[gender],
        "name": name,
        "location": location,
        "email": email,
        "login": login,
        "dob": dob,
        "registered": registered,
        "phone": phone,
        "cell": cell,
        "id": id,
        "picture": picture,
        "nat": nat,
      };
}

class DobModel extends DobEntity {
  DobModel({required super.date, required super.age});

  factory DobModel.fromJson(Map<String, dynamic> json) => DobModel(
        date: DateTime.parse(json["date"]),
        age: json["age"],
      );

  Map<String, dynamic> toJson() => {
        "date": date.toIso8601String(),
        "age": age,
      };
}

class IdModel extends IdEntity {
  IdModel({required super.name, required super.value});

  factory IdModel.fromJson(Map<String, dynamic> json) => IdModel(
        name: json["name"],
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "value": value,
      };
}

class LocationModel extends LocationEntity {
  LocationModel(
      {required super.street,
      required super.city,
      required super.state,
      required super.country,
      required super.postcode,
      required super.coordinates,
      required super.timezone});

  factory LocationModel.fromJson(Map<String, dynamic> json) => LocationModel(
        street: StreetModel.fromJson(json["street"]),
        city: json["city"],
        state: json["state"],
        country: json["country"],
        postcode: json["postcode"],
        coordinates: CoordinatesModel.fromJson(json["coordinates"]),
        timezone: TimezoneModel.fromJson(json["timezone"]),
      );

  Map<String, dynamic> toJson() => {
        "street": street,
        "city": city,
        "state": state,
        "country": country,
        "postcode": postcode,
        "coordinates": coordinates,
        "timezone": timezone,
      };
}

class CoordinatesModel extends CoordinatesEntity {
  CoordinatesModel({required super.latitude, required super.longitude});

  factory CoordinatesModel.fromJson(Map<String, dynamic> json) =>
      CoordinatesModel(
        latitude: json["latitude"],
        longitude: json["longitude"],
      );

  Map<String, dynamic> toJson() => {
        "latitude": latitude,
        "longitude": longitude,
      };
}

class StreetModel extends StreetEntity {
  StreetModel({required super.number, required super.name});

  factory StreetModel.fromJson(Map<String, dynamic> json) => StreetModel(
        number: json["number"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "number": number,
        "name": name,
      };
}

class TimezoneModel extends TimezoneEntity {
  TimezoneModel({required super.offset, required super.description});

  factory TimezoneModel.fromJson(Map<String, dynamic> json) => TimezoneModel(
        offset: json["offset"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "offset": offset,
        "description": description,
      };
}

class LoginModel extends LoginEntity {
  LoginModel(
      {required super.uuid,
      required super.username,
      required super.password,
      required super.salt,
      required super.md5,
      required super.sha1,
      required super.sha256});

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        uuid: json["uuid"],
        username: json["username"],
        password: json["password"],
        salt: json["salt"],
        md5: json["md5"],
        sha1: json["sha1"],
        sha256: json["sha256"],
      );

  Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "username": username,
        "password": password,
        "salt": salt,
        "md5": md5,
        "sha1": sha1,
        "sha256": sha256,
      };
}

class NameModel extends NameEntity {
  NameModel({required super.title, required super.first, required super.last});

  factory NameModel.fromJson(Map<String, dynamic> json) => NameModel(
        title: json["title"],
        first: json["first"],
        last: json["last"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "first": first,
        "last": last,
      };
}

class PictureModel extends PictureEntity {
  PictureModel(
      {required super.large, required super.medium, required super.thumbnail});

  factory PictureModel.fromJson(Map<String, dynamic> json) => PictureModel(
        large: json["large"],
        medium: json["medium"],
        thumbnail: json["thumbnail"],
      );

  Map<String, dynamic> toJson() => {
        "large": large,
        "medium": medium,
        "thumbnail": thumbnail,
      };
}
