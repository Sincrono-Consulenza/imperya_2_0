// ignore_for_file: import_of_legacy_library_into_null_safe, prefer_const_constructors

import 'package:flutter/material.dart';

class ThemeApp {
  //classe singleton che serve per invocare stile e colori nei widget dell'app.
  //classe per la gestione della grafica
  static final ThemeApp _instance = ThemeApp();
  static ThemeApp get instance => _instance;

  //primary colors
  // static Color backgroundLight = changeTheme();
  static Color backgroundDark = const Color(0xFF161f28);

  //text colors
  static const Color darkText = Color(0xFF253840);
  static const Color darkerText = Color(0xFF17262A);
  static const Color lightText = Color(0xFF4A6572);
  static const Color deactivatedText = Color(0xFF767676);
  static const Color nearlyBlack = Color(0xFF213333);
  static const Color grey = Color(0xFF3A5160);
  static const Color gold = Color(0xFFc09d52);
  static const Color dismissibleBackground = Color(0xFF364A54);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);

  //font dei titoli
  static const String fontTitle = 'Galyon';

  static const Color bgColor = Color(0xfff2f2f2);
  static const Color shadowColor = Color(0xffd6d6d6);
  static const TextTheme textTheme = TextTheme();

  //style text titoli Grandi
  static TextStyle titleBlack({double size = 20}) => TextStyle(
        fontFamily: fontTitle,
        fontWeight: FontWeight.bold,
        fontSize: size,
        letterSpacing: 0.18,
        color: black,
      );

  static TextStyle titleWhite({double size = 20}) => TextStyle(
        fontFamily: fontTitle,
        fontWeight: FontWeight.bold,
        fontSize: size,
        letterSpacing: 0.18,
        color: white,
      );
  static TextStyle titleGold({double size = 20}) => TextStyle(
        fontFamily: fontTitle,
        fontWeight: FontWeight.bold,
        fontSize: size,
        letterSpacing: 0.18,
        color: gold,
      );
//withOpacity
  static TextStyle titleBlackOpacity({double size = 20}) => TextStyle(
      fontFamily: fontTitle,
      fontWeight: FontWeight.bold,
      fontSize: size,
      letterSpacing: 0.18,
      color: black.withOpacity(0.05),
      decoration: TextDecoration.lineThrough);

  static TextStyle titleWhiteOpacity({double size = 20}) => TextStyle(
      fontFamily: fontTitle,
      fontWeight: FontWeight.bold,
      fontSize: size,
      letterSpacing: 0.18,
      color: Colors.white.withOpacity(0.05),
      decoration: TextDecoration.lineThrough);

  //style text titoli Medi
  static TextStyle mediumtitleBlack({double size = 14}) => TextStyle(
        fontFamily: fontTitle,
        fontWeight: FontWeight.bold,
        fontSize: size,
        letterSpacing: 0.18,
        color: black,
      );
  static TextStyle mediumtitleWhite({double size = 14}) => TextStyle(
        fontFamily: fontTitle,
        fontWeight: FontWeight.bold,
        fontSize: size,
        letterSpacing: 0.18,
        color: white,
      );
  static TextStyle mediumtitleGold({double size = 14}) => TextStyle(
        fontFamily: fontTitle,
        fontWeight: FontWeight.bold,
        fontSize: size,
        letterSpacing: 0.18,
        color: gold,
      );

  //style text titoli Piccoli
  static TextStyle smallTitleBlack({double size = 10}) => TextStyle(
        fontFamily: fontTitle,
        fontWeight: FontWeight.bold,
        fontSize: size,
        letterSpacing: 0.18,
        color: black,
      );
  static TextStyle smallTitleWhite({double size = 10}) => TextStyle(
        fontFamily: fontTitle,
        fontWeight: FontWeight.bold,
        fontSize: size,
        letterSpacing: 0.18,
        color: white,
      );
  static TextStyle smallTitleGold({double size = 10}) => TextStyle(
        fontFamily: fontTitle,
        fontWeight: FontWeight.bold,
        fontSize: size,
        letterSpacing: 0.18,
        color: gold,
      );

  //style text sottotitoli

  static TextStyle textBlack({double size = 15}) => TextStyle(
        fontFamily: fontTitle,
        fontWeight: FontWeight.normal,
        fontSize: size,
        letterSpacing: 0.18,
        color: black,
      );
  static TextStyle textWhite({double size = 15}) => TextStyle(
        fontFamily: fontTitle,
        fontWeight: FontWeight.normal,
        fontSize: size,
        letterSpacing: 0.18,
        color: white,
      );
  static TextStyle textGold({double size = 15}) => TextStyle(
        fontFamily: fontTitle,
        fontWeight: FontWeight.normal,
        fontSize: size,
        letterSpacing: 0.18,
        color: gold,
      );

  //style text dei testi di allerta

  static TextStyle textAlert({double size = 13}) => TextStyle(
        fontFamily: fontTitle,
        fontWeight: FontWeight.w700,
        fontSize: 13.0,
        letterSpacing: 0.18,
        color: Colors.red,
      );

  //boxe decoration
  static BoxDecoration simpleShadowBox = BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.8),
        spreadRadius: 10,
        blurRadius: 5,
        offset: Offset(0, 7), // changes position of shadow
      ),
    ],
    borderRadius: BorderRadius.circular(30),
    color: Colors.white,
  );

  // Color backgroundLight() {
  //   return prefs.themedark ? Color(0xFF161f28) : Color(0xFFD7D7D7);
  // }

}
