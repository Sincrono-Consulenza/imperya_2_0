// To parse this JSON data, do
//
//     final bannerModel = bannerModelFromJson(jsonString);

import 'dart:convert';

BannerModel bannerModelFromJson(String str) =>
    BannerModel.fromJson(json.decode(str));

String bannerModelToJson(BannerModel data) => json.encode(data.toJson());

class BannerModel {
  BannerModel({
    this.code,
    this.message,
    this.show,
    this.body,
  });

  int? code;
  String? message;
  bool? show;
  Banners? body;

  factory BannerModel.fromJson(Map<String, dynamic> json) => BannerModel(
        code: json["code"],
        message: json["message"],
        show: json["show"],
        body: Banners.fromJson(json["body"]),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
        "show": show,
        "body": body!.toJson(),
      };
}

class Banners {
  Banners({
    this.banners,
  });

  List<Banner>? banners;

  factory Banners.fromJson(Map<String, dynamic> json) => Banners(
        banners:
            List<Banner>.from(json["banners"].map((x) => Banner.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "banners": List<dynamic>.from(banners!.map((x) => x.toJson())),
      };
}

class Banner {
  Banner({
    this.id,
    this.index,
    this.visible,
    this.caption,
    this.base64,
  });

  int? id;
  int? index;
  bool? visible;
  String? caption;
  String? base64;

  factory Banner.fromJson(Map<String, dynamic> json) => Banner(
        id: json["id"],
        index: json["index"],
        visible: json["visible"],
        caption: json["caption"],
        base64: json["base64"],
      );
// data:image/jpeg;base64,
  Map<String, dynamic> toJson() => {
        "id": id,
        "index": index,
        "visible": visible,
        "caption": caption,
        "base64": base64,
      };
}
