import 'dart:convert';
import 'package:Imperya/models/linee.dart';
import 'package:http/http.dart' as http;

class LineeService {
  static final LineeService _instance = LineeService();
  static LineeService get instance => _instance;

  Future<LineeModel> getLinee() async {
    // vedi i commenti nella classe banner_service "..\lib\services\banner_service.dart"
    var url = Uri.parse(
        'https://ssl-conf.imperya.com:8943/ConfiguratorService/categoria/getLinee');
    var response = await http.get(
      url,
    );

    if (response.statusCode == 200) {
      return LineeModel.fromJson(jsonDecode(response.body));
    } else {
      return LineeModel(
          body: [],
          code: -1,
          message:
              "Problema con il caricamento dati, controlla la tua connessione",
          show: false);
    }
  }
}
