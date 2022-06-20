// ignore_for_file: prefer_const_constructors

import 'package:Imperya/pages/pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//classe che gestice le route delle pagine e quindi i nomi delle page per poter navigare tra esse con il Navigator
//classe singleton

class RoutesApp {
  static final RoutesApp _instance = RoutesApp();
  static RoutesApp get instance => _instance;

  static String initRoute = LoginPage.tag; //route iniziale

//"mappa" delle page presenti nell'app, se si vuole accedere alle page che si creano, bisogna definire in tale page un tag che ne identifica l'esistenza, poi inserirla all'interno di questa Map.
//gli elementi inseriti in questa mappa, vengono presi in considerazione dal MATERIALAPP, e quindi è possibile invocare tali route semplicemente con il nome/tag delle pagine.
  static Map<String, Widget Function(BuildContext)> routes = {
    LoginPage.tag: (BuildContext context) => LoginPage(),
    RegisterPage.tag: (BuildContext context) => RegisterPage(),
    PolicyPage.tag: (BuildContext context) => PolicyPage(),
    HomePage.tag: (BuildContext context) => HomePage(),
  };

  static onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
        builder: (context) =>
            const AlertDialog()); // se si inserisce un Navigator a una route che non è definita in questo punto, tale metodo mostra una finestra di alert
  }
}
