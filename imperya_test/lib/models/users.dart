// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    required this.users,
  });

  List<UserElement> users;

  factory User.fromJson(Map<String, dynamic> json) => User(
        users: List<UserElement>.from(
            json["users"].map((x) => UserElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "users": List<dynamic>.from(users.map((x) => x.toJson())),
      };
}

class UserElement {
  UserElement({
    required this.user,
    required this.psw,
  });

  String user;
  String psw;

  factory UserElement.fromJson(Map<String, dynamic> json) => UserElement(
        user: json["user"],
        psw: json["psw"],
      );

  Map<String, dynamic> toJson() => {
        "user": user,
        "psw": psw,
      };
}
