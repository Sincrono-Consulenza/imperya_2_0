// ignore_for_file: prefer_const_constructors

import 'package:Imperya/pages/home_page.dart';
import 'package:Imperya/pages/login_page.dart';
import 'package:Imperya/pages/privacy_policy_page.dart';
import 'package:Imperya/pages/register_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoutesApp {
  static final RoutesApp _instance = RoutesApp();
  static RoutesApp get instance => _instance;

  static String initRoute = LoginPage.tag;

  static Map<String, Widget Function(BuildContext)> routes = {
    LoginPage.tag: (BuildContext context) => LoginPage(),
    RegisterPage.tag: (BuildContext context) => RegisterPage(),
    PolicyPage.tag: (BuildContext context) => PolicyPage(),
    HomePage.tag: (BuildContext context) => HomePage(),
  };

  static onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertDialog());
  }
}
