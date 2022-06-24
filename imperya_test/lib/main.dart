// ignore_for_file: curly_braces_in_flow_control_structures, import_of_legacy_library_into_null_safe

import 'package:Imperya/routes/routes_app.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:swatcher/swatcher.dart';
import 'theme/theme_app.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() {
  HttpOverrides.global = MyHttpOverrides();

  runApp(Imperya());
}

class Imperya extends StatelessWidget {
  Imperya({Key? key}) : super(key: key);
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    // layout();

    return MaterialApp(
      title: 'Imperya',
      debugShowCheckedModeBanner:
          false, //abilità o disabilita il banner del debug in alto a destra
      theme: ThemeData(
          primarySwatch: Swatcher.createMaterialColor(ThemeApp
              .gold), // si definisce il colore principale dell'app grazie allo Swatcher - senza esso non è possibile utilizzare colori personalizzati. Oltre al color si definisce il font
          fontFamily: ThemeApp.fontTitle),
      routes: RoutesApp
          .routes, //definizione delle route per la navigazione dell'app tra le varie pagine.
      initialRoute: RoutesApp
          .initRoute, // route inziale, ovvero la prima pagina che deve essere eseguita una volta aperta l'app.
      onGenerateRoute: (settings) => RoutesApp.onGenerateRoute(
          settings), //se si finisce su una route che non esiste, viene mostrato un alert, NOTA: tutti gli elementi dele route sono definite nella classe specifica
      navigatorKey: navigatorKey,
    );
  }
}

//classe per il supporto grafico
class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}
