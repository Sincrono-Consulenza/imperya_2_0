import 'package:flutter/material.dart';

class LogoAppBar extends StatefulWidget {
  const LogoAppBar({Key? key}) : super(key: key);

  @override
  State<LogoAppBar> createState() => _LogoAppBarState();
}

class _LogoAppBarState extends State<LogoAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Container(
        decoration: const BoxDecoration(
            image:
                DecorationImage(image: AssetImage("assets/images/logo.png"))),
      ),
    );
  }
}
