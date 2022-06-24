import 'dart:convert';
import 'package:Imperya/models/models.dart';
import 'package:Imperya/services/repository/repository.dart';
import 'package:http/http.dart' as http;

class AccessService {
  //singleton
  static final AccessService _instance = AccessService();
  static AccessService get instance => _instance;

  Future<int> login(String username, String password) async {
    //si stabilisce l'url e il tupo di chiamata - nonchè gli header e il body
    String url =
        "https://ssl-conf.imperya.com:8944/LoginService/shop/login"; //StartProject.login;
    Uri uri = Uri.parse(url);
    Map data = {
      "username": username,
      "password": password,
    };
    var body = json.encode(data);

    try {
      //esecuzione della chiamata
      var response = await http.post(uri,
          headers: {"Content-Type": "application/json", 'lang': 'it'},
          body: body);

      if (response.statusCode == 200) {
        //chiavamata avvenuta con successo
        try {
          final UserAccess userAccess =
              UserAccess.fromJson(json.decode(response.body));

          if (userAccess.code == -1) {
            return _userNotAuthorized(response.body, 401);
          } // se il codice è -1, ritorna codice di errore 401 --utente non autorizzato

          AccessRepository.currentUser = userAccess;
          AccessRepository.userToken = userAccess.body!.token;
          if (AccessRepository.userToken != null) {
            return 200; //login avvenuto con successo
          } else {
            return _userNotAuthorized(response.body,
                401); // altrimenti ritorna codice di errore 401 --utente non autorizzato
          }
        } catch (error) {
          return _userNotAuthorized(response.body,
              404); //se avviene un errore durante la mappatura dei dati - errore 404, dati non trovati
        }
      } else {
        return _userNotAuthorized(
            response.body,
            response
                .statusCode); // se avviene un errore di chiamata, ritornare errore della chiamata -errore nel servizio
      }
    } catch (error) {
      // ignore: avoid_print
      print("ERRORE DI CARICAMENTO DAL SERVICE: " + error.toString());
      return 500; // se avviene un errore durante il processo, ritornare errore 500 - internal server error
    }
  }

  int _userNotAuthorized(String body, int code) {
    final UserError userError = UserError.fromJson(json.decode(body));
    AccessRepository.currentUser = userError;
    return code;
  }
}
