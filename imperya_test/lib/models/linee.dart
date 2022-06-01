// To parse this JSON data, do
//
//     final lineeModel = lineeModelFromJson(jsonString);

import 'dart:convert';

LineeModel lineeModelFromJson(String str) =>
    LineeModel.fromJson(json.decode(str));

String lineeModelToJson(LineeModel data) => json.encode(data.toJson());

class LineeModel {
  LineeModel({
    this.code,
    this.message,
    this.show,
    this.body,
  });

  int? code;
  String? message;
  bool? show;
  List<Body>? body;

  factory LineeModel.fromJson(Map<String, dynamic> json) => LineeModel(
        code: json["code"],
        message: json["message"],
        show: json["show"],
        body: List<Body>.from(json["body"].map((x) => Body.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
        "show": show,
        "body": List<dynamic>.from(body!.map((x) => x.toJson())),
      };
}

class Body {
  Body({
    this.categoria,
    this.nome,
    this.descrizione,
  });

  Categoria? categoria;
  String? nome;
  String? descrizione;

  factory Body.fromJson(Map<String, dynamic> json) => Body(
        categoria: Categoria.fromJson(json["categoria"]),
        nome: json["nome"],
        descrizione: json["descrizione"],
      );

  Map<String, dynamic> toJson() => {
        "categoria": categoria!.toJson(),
        "nome": nome,
        "descrizione": descrizione,
      };
}

class Categoria {
  Categoria({
    this.idCategoria,
    this.alias,
    this.codiceLinea,
    this.virtuale,
    this.ordinamento,
    this.visibileHome,
    this.pathImage,
    this.sottoCategorie,
  });

  int? idCategoria;
  String? alias;
  String? codiceLinea;
  bool? virtuale;
  int? ordinamento;
  bool? visibileHome;
  String? pathImage;
  bool? sottoCategorie;

  factory Categoria.fromJson(Map<String, dynamic> json) => Categoria(
        idCategoria: json["idCategoria"],
        alias: json["alias"],
        codiceLinea: json["codiceLinea"],
        virtuale: json["virtuale"],
        ordinamento: json["ordinamento"] == null ? null : json["ordinamento"],
        visibileHome:
            json["visibileHome"] == null ? null : json["visibileHome"],
        pathImage: json["pathImage"],
        sottoCategorie: json["sottoCategorie"],
      );

  Map<String, dynamic> toJson() => {
        "idCategoria": idCategoria,
        "alias": alias,
        "codiceLinea": codiceLinea,
        "virtuale": virtuale,
        "ordinamento": ordinamento == null ? null : ordinamento,
        "visibileHome": visibileHome == null ? null : visibileHome,
        "pathImage": pathImage,
        "sottoCategorie": sottoCategorie,
      };
}
