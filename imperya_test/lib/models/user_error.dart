import 'dart:convert';

UserError userErrorFromJson(String str) => UserError.fromJson(json.decode(str));

String userErrorToJson(UserError data) => json.encode(data.toJson());

class UserError {
  UserError({
    this.timestamp,
    this.status,
    this.error,
    this.message,
    this.path,
  });

  String? timestamp;
  int? status;
  String? error;
  String? message;
  String? path;

  factory UserError.fromJson(Map<String, dynamic> json) => UserError(
        timestamp: json["timestamp"],
        status: json["status"],
        error: json["error"],
        message: json["message"],
        path: json["path"],
      );

  Map<String, dynamic> toJson() => {
        "timestamp": timestamp,
        "status": status,
        "error": error,
        "message": message,
        "path": path,
      };
}
