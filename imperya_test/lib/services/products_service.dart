import 'dart:convert';

import 'package:Imperya/models/last_products.dart';
import 'package:http/http.dart' as http;

class ProductService {
  static final ProductService _instance = ProductService();
  static ProductService get instance => _instance;

  Future<LastProductModel> getLastProducts() async {
    var url = Uri.parse(
        'https://ssl-conf.imperya.com:8943/ConfiguratorService/prodotto/listNewEntries');
    var response = await http.get(
      url,
    );

    if (response.statusCode == 200) {
      return LastProductModel.fromJson(jsonDecode(response.body));
    } else {
      return LastProductModel(
          body: [],
          code: -1,
          message:
              "Problema con il caricamento dati, controlla la tua connessione",
          show: false);
    }
  }
}
