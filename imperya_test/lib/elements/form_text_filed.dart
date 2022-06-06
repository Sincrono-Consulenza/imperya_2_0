// ignore_for_file: prefer_const_constructors_in_immutables, must_be_immutable

import 'package:Imperya/theme/theme_app.dart';
import 'package:flutter/material.dart';

//widget personalizzato - definisce un input di testo con una grafica specifica
class FormTextField extends StatefulWidget {
  //esendo uno stateful widget, esso è definito da due classi, una pubblica e una privata.
  //nella classe pubblica, si definiscono i parametri d'ingresso e si specializzano tramite il costruttore.
  FormTextField({
    //costruttore
    Key? key,
    this.text = "",
    required this.controller,
    this.obscureText = false,
    required this.suffixIcon,
  }) : super(key: key);
  //parametri d'ingresso
  final String text;
  final TextEditingController controller;
  final Widget suffixIcon;
  final bool obscureText;

  @override
  State<FormTextField> createState() => _FormTextFieldState();
}

class _FormTextFieldState extends State<FormTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      controller: widget
          .controller, // per accedere al paramentro definito nella classe pubblica, bisogna passare tramite la parola chiave "widget"
      obscureText: widget.obscureText,
      style: ThemeApp.textBlack(),
      decoration: InputDecoration(
        suffixIcon: widget.suffixIcon,
        counterStyle: ThemeApp.textBlack(),
        hintText: widget.text,
        hintStyle: ThemeApp.textBlack(),
        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            color: ThemeApp.gold,
          ),
        ),
      ),
    );
  }
}
