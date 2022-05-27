// ignore_for_file: curly_braces_in_flow_control_structures, import_of_legacy_library_into_null_safe

import 'package:Imperya/routes/routes_app.dart';
import 'package:Imperya/theme/language.dart';
import 'package:Imperya/theme/references.dart';
import 'package:flutter/material.dart';
import 'package:swatcher/swatcher.dart';
import 'theme/theme_app.dart';

void main() {
  runApp(Imperya());
}

class Imperya extends StatelessWidget {
  Imperya({Key? key}) : super(key: key);
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  void layout() {
    final prefs = References();
    // final lang = Language();
    // lang.changeLanguage();
    LayoutBuilder(builder: (context, constraints) {
      try {
        if (constraints.maxWidth < 600) {
          prefs.setIsTablet = false;
        } else {
          prefs.setIsTablet = true;
        }
      } catch (error) {
        print(error);
      }
      return const SizedBox();
    });
  }

  @override
  Widget build(BuildContext context) {
    layout();

    return MaterialApp(
      title: 'Imperya',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Swatcher.createMaterialColor(ThemeApp.gold),
          fontFamily: ThemeApp.fontTitle),
      routes: RoutesApp.routes,
      initialRoute: RoutesApp.initRoute,
      onGenerateRoute: (settings) => RoutesApp.onGenerateRoute(settings),
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
