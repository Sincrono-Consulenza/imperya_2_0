import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

//Questa classe viene utilizzata per comunicare con la memoria del dispositivo che ospita l'app.
//Tramite il SharedPreferences è possibile salvare in memoria stringhe, boleani, cifre o liste di stringhe.
//utile per salvare elementi e tenere aggiornata l'app quando si chiude e si riaccende l'app. (es: il boleano "ricordami" che defisce se rimanere con il login attivo, può essere definito in questo punto)

class References extends ChangeNotifier {
  static final References _instance = References._internal();

  factory References() {
    return _instance;
  }

  References._internal();

  SharedPreferences? _prefs;

  initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
  }

  get getIsTablet {
    return _prefs!.getBool('layoutBool');
  }

  set setIsTablet(bool value) {
    _prefs!.setBool('layoutBool', value);
  }

  get getlanguage {
    return _prefs!.getString('language') ?? "italiano";
  }

  set language(String value) {
    _prefs!.setString('language', value);
  }
}
