// ignore_for_file: sized_box_for_whitespace

import 'package:Imperya/models/last_products.dart';
import 'package:Imperya/theme/theme_app.dart';
import 'package:flutter/material.dart';

class CardProductLast extends StatefulWidget {
  const CardProductLast({Key? key, this.product}) : super(key: key);
  final LastProduct? product;
  @override
  State<CardProductLast> createState() => _CardProductLastState();
}

class _CardProductLastState extends State<CardProductLast> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.width * 0.5,
      decoration: BoxDecoration(
          border: Border.all(color: ThemeApp.gold, width: 2),
          borderRadius: BorderRadius.circular(10),
          color: ThemeApp.white),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
            child: Container(
              height: MediaQuery.of(context).size.width * 0.2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(widget.product!.prodotto!.pathImage! +
                          "/thumbnail.jpg"),
                      fit: BoxFit.cover)),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * 0.07,
            child: Padding(
              padding: const EdgeInsets.only(left: 4.0, top: 4),
              child: Text(
                widget.product!.nome!,
                style: ThemeApp.mediumtitleGold(),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * 0.12,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 4.0,
              ),
              child: Text(
                widget.product!.descrizione!,
                style: ThemeApp.textBlack(size: 10),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * 0.04,
            child: Padding(
                padding: const EdgeInsets.only(
                  left: 4.0,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 4.0,
                      ),
                      child: Text(
                        widget.product!.prodotto!.prezzoListino.toString() +
                            "€",
                        style: ThemeApp.smallTitleBlack(size: 14),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ),
                    const Expanded(child: SizedBox()),
                    // ignore: prefer_const_constructors
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 20.0,
                      ),
                      child: const Icon(
                        Icons.shopping_cart_rounded,
                        color: ThemeApp.gold,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        right: 4.0,
                      ),
                      child: Icon(
                        Icons.favorite,
                        color: ThemeApp.grey,
                      ),
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
