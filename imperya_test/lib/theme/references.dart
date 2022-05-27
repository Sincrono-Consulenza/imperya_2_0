import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
