// ignore_for_file: must_be_immutable, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'dart:convert';
import 'dart:typed_data';

import 'package:Imperya/models/banners.dart';
import 'package:Imperya/theme/theme_app.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CauroselImage extends StatelessWidget {
  const CauroselImage(this.model, {Key? key}) : super(key: key);
  final BannerModel model;

  List<Widget> imagesSlider() {
    return model.body!.banners!.map((item) {
      Uint8List _bytes = base64.decode(item.base64!.split(',').last);

      return Container(
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(color: ThemeApp.gold),
            image: DecorationImage(
                alignment: Alignment.topCenter,
                image: Image.memory(_bytes).image,
                fit: BoxFit.cover)),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.03,
        child: CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 2.50,
            enlargeCenterPage: true,
          ),
          items: imagesSlider(),
        ));
  }
}
