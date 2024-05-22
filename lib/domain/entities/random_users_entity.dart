// To parse this JSON data, do
//
//     final randomUserListRes = randomUserListResFromJson(jsonString);

class RandomUsersEntity {
  List<RandomUserEntity> results;
  InfoEntity info;

  RandomUsersEntity({
    required this.results,
    required this.info,
  });
}

class InfoEntity {
  String seed;
  int results;
  int page;
  String version;

  InfoEntity({
    required this.seed,
    required this.results,
    required this.page,
    required this.version,
  });
}

class RandomUserEntity {
  Gender gender;
  NameEntity name;
  LocationEntity location;
  String email;
  LoginEntity login;
  DobEntity dob;
  DobEntity registered;
  String phone;
  String cell;
  IdEntity id;
  PictureEntity picture;
  String nat;

  RandomUserEntity({
    required this.gender,
    required this.name,
    required this.location,
    required this.email,
    required this.login,
    required this.dob,
    required this.registered,
    required this.phone,
    required this.cell,
    required this.id,
    required this.picture,
    required this.nat,
  });
}

class DobEntity {
  DateTime date;
  int age;

  DobEntity({
    required this.date,
    required this.age,
  });
}

enum Gender {
  FEMALE,
  MALE
}

final genderValues = EnumValues({
  "female": Gender.FEMALE,
  "male": Gender.MALE
});

class IdEntity {
  String name;
  String? value;

  IdEntity({
    required this.name,
    required this.value,
  });
}

class LocationEntity {
  StreetEntity street;
  String city;
  String state;
  String country;
  dynamic postcode;
  CoordinatesEntity coordinates;
  TimezoneEntity timezone;

  LocationEntity({
    required this.street,
    required this.city,
    required this.state,
    required this.country,
    required this.postcode,
    required this.coordinates,
    required this.timezone,
  });
}

class CoordinatesEntity {
  String latitude;
  String longitude;

  CoordinatesEntity({
    required this.latitude,
    required this.longitude,
  });
}

class StreetEntity {
  int number;
  String name;

  StreetEntity({
    required this.number,
    required this.name,
  });
}

class TimezoneEntity {
  String offset;
  String description;

  TimezoneEntity({
    required this.offset,
    required this.description,
  });
}

class LoginEntity {
  String uuid;
  String username;
  String password;
  String salt;
  String md5;
  String sha1;
  String sha256;

  LoginEntity({
    required this.uuid,
    required this.username,
    required this.password,
    required this.salt,
    required this.md5,
    required this.sha1,
    required this.sha256,
  });
}

class NameEntity {
  String title;
  String first;
  String last;

  NameEntity({
    required this.title,
    required this.first,
    required this.last,
  });
}

class PictureEntity {
  String large;
  String medium;
  String thumbnail;

  PictureEntity({
    required this.large,
    required this.medium,
    required this.thumbnail,
  });
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}