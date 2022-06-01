// ignore_for_file: prefer_if_null_operators

import 'dart:convert';

LastProductModel lastProductFromJson(String str) =>
    LastProductModel.fromJson(json.decode(str));

String lastProductToJson(LastProductModel data) => json.encode(data.toJson());

class LastProductModel {
  LastProductModel({
    this.code,
    this.message,
    this.show,
    this.body,
  });

  int? code;
  String? message;
  bool? show;
  List<LastProduct>? body;

  factory LastProductModel.fromJson(Map<String, dynamic> json) =>
      LastProductModel(
        code: json["code"],
        message: json["message"],
        show: json["show"],
        body: List<LastProduct>.from(
            json["body"].map((x) => LastProduct.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
        "show": show,
        "body": List<dynamic>.from(body!.map((x) => x.toJson())),
      };
}

class LastProduct {
  LastProduct({
    this.nome,
    this.descrizione,
    this.prodotto,
  });

  String? nome;
  String? descrizione;
  Prodotto? prodotto;

  factory LastProduct.fromJson(Map<String, dynamic> json) => LastProduct(
        nome: json["nome"],
        descrizione: json["descrizione"],
        prodotto: Prodotto.fromJson(json["prodotto"]),
      );

  Map<String, dynamic> toJson() => {
        "nome": nome,
        "descrizione": descrizione,
        "prodotto": prodotto!.toJson(),
      };
}

class Prodotto {
  Prodotto({
    this.idProdotto,
    this.codiceProdotto,
    this.dataCreazione,
    this.prezzoListino,
    this.prezzoScontato,
    this.importoProvvigionabile,
    this.percentualeSconto,
    this.prezzoAcquisto,
    this.percentualeScontoPromozione,
    this.kit,
    this.quantitaMagazzino,
    this.idCategoria,
    this.numeroImmagini,
    this.numeroDocumenti,
    this.visualizzazioni,
    this.venduti,
    this.dataInizioPubblicazione,
    this.idLinea,
    this.codiceListino,
    this.sigla,
    this.showDisponibilita,
    this.pathImage,
    this.scaffale,
    this.disponibileDal,
  });

  int? idProdotto;
  String? codiceProdotto;
  String? dataCreazione;
  dynamic prezzoListino;
  dynamic prezzoScontato;
  dynamic importoProvvigionabile;
  dynamic percentualeSconto;
  dynamic prezzoAcquisto;
  dynamic percentualeScontoPromozione;
  bool? kit;
  dynamic quantitaMagazzino;
  int? idCategoria;
  dynamic numeroImmagini;
  dynamic numeroDocumenti;
  dynamic visualizzazioni;
  dynamic venduti;
  String? dataInizioPubblicazione;
  int? idLinea;
  String? codiceListino;
  String? sigla;
  bool? showDisponibilita;
  String? pathImage;
  String? scaffale;
  DateTime? disponibileDal;

  factory Prodotto.fromJson(Map<String, dynamic> json) => Prodotto(
        idProdotto: json["idProdotto"],
        codiceProdotto: json["codiceProdotto"],
        dataCreazione: json["dataCreazione"],
        prezzoListino: json["prezzoListino"],
        prezzoScontato: json["prezzoScontato"].toDouble(),
        importoProvvigionabile: json["importoProvvigionabile"].toDouble(),
        percentualeSconto: json["percentualeSconto"],
        prezzoAcquisto: json["prezzoAcquisto"],
        percentualeScontoPromozione: json["percentualeScontoPromozione"],
        kit: json["kit"],
        quantitaMagazzino: json["quantitaMagazzino"],
        idCategoria: json["idCategoria"],
        numeroImmagini: json["numeroImmagini"],
        numeroDocumenti: json["numeroDocumenti"],
        visualizzazioni: json["visualizzazioni"],
        venduti: json["venduti"],
        dataInizioPubblicazione: json["dataInizioPubblicazione"],
        idLinea: json["idLinea"],
        codiceListino: json["codiceListino"],
        sigla: json["sigla"],
        showDisponibilita: json["showDisponibilita"],
        pathImage: json["pathImage"],
        scaffale: json["scaffale"] == null ? null : json["scaffale"],
        disponibileDal: json["disponibileDal"] == null
            ? null
            : DateTime.parse(json["disponibileDal"]),
      );

  Map<String, dynamic> toJson() => {
        "idProdotto": idProdotto,
        "codiceProdotto": codiceProdotto,
        "dataCreazione": dataCreazione,
        "prezzoListino": prezzoListino,
        "prezzoScontato": prezzoScontato,
        "importoProvvigionabile": importoProvvigionabile,
        "percentualeSconto": percentualeSconto,
        "prezzoAcquisto": prezzoAcquisto,
        "percentualeScontoPromozione": percentualeScontoPromozione,
        "kit": kit,
        "quantitaMagazzino": quantitaMagazzino,
        "idCategoria": idCategoria,
        "numeroImmagini": numeroImmagini,
        "numeroDocumenti": numeroDocumenti,
        "visualizzazioni": visualizzazioni,
        "venduti": venduti,
        "dataInizioPubblicazione": dataInizioPubblicazione,
        "idLinea": idLinea,
        "codiceListino": codiceListino,
        "sigla": sigla,
        "showDisponibilita": showDisponibilita,
        "pathImage": pathImage,
        "scaffale": scaffale == null ? null : scaffale,
        "disponibileDal": disponibileDal == null
            ? null
            : "${disponibileDal!.year.toString().padLeft(4, '0')}-${disponibileDal!.month.toString().padLeft(2, '0')}-${disponibileDal!.day.toString().padLeft(2, '0')}",
      };
}
