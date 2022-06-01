import 'dart:convert';

import 'package:Imperya/models/banners.dart';
import 'package:http/http.dart' as http;

class BannerService {
  //singleton
  static BannerService _instance = BannerService();
  static BannerService get instance => _instance;

  Future<BannerModel> getBanner() async {
    var url = Uri.parse(
        'https://ssl-conf.imperya.com:8943/ConfiguratorService/banner/getAll');
    var response = await http.get(
      url,
    );

    if (response.statusCode == 200) {
      try {
        return BannerModel.fromJson(jsonDecode(response.body));
        ;
      } catch (error) {
        return BannerModel(
            body: Banners(banners: []),
            code: -1,
            message:
                "Problema nel caricamento dei dati, verifica la tua connessione",
            show: false);
      }
    } else {
      return BannerModel(
          body: Banners(banners: []),
          code: -1,
          message: "Errore nel caricamento, ci scusiamo per il disagio",
          show: false);
    }
  }
}
