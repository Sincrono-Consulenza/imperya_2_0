import 'dart:convert';

import 'package:Imperya/models/banners.dart';
import 'package:http/http.dart' as http;

class BannerService {
  //singleton
  static BannerService _instance = BannerService();
  static BannerService get instance => _instance;

  Future<BannerModel> getBanner() async {
    // servizio per chiamare la web api che fornisce i dati dei banner.
    var url = Uri.parse(
        'https://ssl-conf.imperya.com:8943/ConfiguratorService/banner/getAll');
    var response = await http.get(
      // chiamata all'end-point con verbo get.
      url,
    );

    if (response.statusCode == 200) {
      // se la risposta ha esito positivo
      try {
        return BannerModel.fromJson(jsonDecode(response
            .body)); // mappa i dati tramite il modello su misura della risposta stessa della chiamata (ciò è possibile alla simulaizone avvenuta in postman, dove si preleva il json della risposta a tramite quicktype, viene generata la classe del modello)

      } catch (error) {
        // se siverifica un errore durante il processo di chiamata o durante la mappatura dei dati, passa al seguente codice
        return BannerModel(
            body: Banners(banners: []),
            code: -1,
            message:
                "Problema nel caricamento dei dati, verifica la tua connessione",
            show: false);
      }
    } else {
      // se la chiamata non ha esito positivo, restituisci un'istanza del modello con un errore.
      return BannerModel(
          body: Banners(banners: []),
          code: -1,
          message: "Errore nel caricamento, ci scusiamo per il disagio",
          show: false);
    }
  }
}
