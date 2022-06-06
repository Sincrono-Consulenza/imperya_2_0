import 'package:Imperya/theme/theme_app.dart';
import 'package:flutter/material.dart';

class FloatingButtonCart extends StatelessWidget {
  const FloatingButtonCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        //navigator verso il carrello
      },
      tooltip: "Cart",
      child: Container(
        color: ThemeApp.gold,
        margin: const EdgeInsets.all(15.0),
        child: const Icon(
          Icons.shopping_cart_rounded,
          color: ThemeApp.white,
        ),
      ),
      elevation: 4.0,
    );
  }
}
