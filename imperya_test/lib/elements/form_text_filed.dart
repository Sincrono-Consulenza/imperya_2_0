// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:Imperya/theme/theme_app.dart';
import 'package:flutter/material.dart';

class FormTextField extends StatefulWidget {
  FormTextField({
    Key? key,
    this.text = "",
    required this.controller,
    this.obscureText = false,
    required this.suffixIcon,
  }) : super(key: key);
  final String text;
  final TextEditingController controller;
  final Widget suffixIcon;
  bool obscureText;

  @override
  State<FormTextField> createState() => _FormTextFieldState();
}

class _FormTextFieldState extends State<FormTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      controller: widget.controller,
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
