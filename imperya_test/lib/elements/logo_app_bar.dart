// ignore_for_file: unnecessary_null_comparison, prefer_if_null_operators, prefer_const_constructors, duplicate_ignore

import 'package:Imperya/theme/theme_app.dart';
import 'package:flutter/material.dart';

class LogoAppBar extends StatelessWidget implements PreferredSize {
  const LogoAppBar(
      {Key? key,
      required this.leftPressed,
      required this.rightPressed,
      required this.logoSize,
      required this.searchWidget,
      required this.title,
      required this.rightWidget,
      required this.roundedEdge,
      required this.showLogo})
      : super(key: key);
  final Function leftPressed;
  final Function rightPressed;
  final double logoSize;
  final Function searchWidget;
  final String title;
  final Widget rightWidget;
  final bool roundedEdge;
  final bool showLogo;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(title != "" && showLogo
          ? MediaQuery.of(context).size.height * 0.05
          : MediaQuery.of(context).size.height * 0.05),
      child: AppBar(
        elevation: 0.0,
        bottomOpacity: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.apps_sharp),
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
        iconTheme: IconThemeData(
          color: ThemeApp.gold,
        ),
        backgroundColor: ThemeApp.white,
        title: (title != "")
            ? Text(
                title,
                style: ThemeApp.titleBlack(),
              )
            : Container(),
        flexibleSpace: showLogo
            ? Padding(
                padding: EdgeInsets.only(top: title != "" ? 80 : 40),
                child: Center(
                  child: Image.asset(
                    "assets/images/logo.png",
                    width: logoSize,
                    height: logoSize,
                  ),
                ),
              )
            : Container(),
        actions: [
          rightWidget,
          Padding(
            padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.09),
            child: GestureDetector(
                child: Icon(
                  Icons.person,
                  color: ThemeApp.gold,
                ),
                onTap: () {}),
          ),
        ],
        shape: roundedEdge
            ? RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                ),
              )
            : null,
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(title != "" && showLogo ? 145 : 60.0);

  @override
  Widget get child => throw UnimplementedError();
}
