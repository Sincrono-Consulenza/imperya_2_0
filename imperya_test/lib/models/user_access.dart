import 'dart:convert';

UserAccess userAccessFromJson(String str) =>
    UserAccess.fromJson(json.decode(str));

String userAccessToJson(UserAccess data) => json.encode(data.toJson());

class UserAccess {
  UserAccess({
    this.code,
    this.message,
    this.show,
    this.body,
  });

  int? code;
  String? message;
  bool? show;
  BodyUserAccess? body;

  factory UserAccess.fromJson(Map<String, dynamic> json) => UserAccess(
      code: json["code"],
      message: json["message"],
      show: json["show"],
      body: BodyUserAccess?.fromJson(json["body"]));

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
        "show": show,
        "body": body!.toJson(),
      };
}

class BodyUserAccess {
  BodyUserAccess({
    this.token,
  });

  String? token;

  factory BodyUserAccess.fromJson(Map<String, dynamic> json) => BodyUserAccess(
        token: json["token"] ?? "token non generato- troppe sessioni aperte",
      );

  Map<String, dynamic> toJson() => {
        "token": token,
      };
}
