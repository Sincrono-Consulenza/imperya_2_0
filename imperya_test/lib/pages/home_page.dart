// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:Imperya/elements/card_product_last.dart';
import 'package:Imperya/elements/caurosel_image.dart';
import 'package:Imperya/elements/logo_app_bar.dart';
import 'package:Imperya/models/banners.dart';
import 'package:Imperya/models/last_products.dart';
import 'package:Imperya/models/linee.dart';
import 'package:Imperya/services/banner_service.dart';
import 'package:Imperya/services/linee_service.dart';
import 'package:Imperya/services/products_service.dart';
import 'package:Imperya/theme/theme_app.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String tag = "home";
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  LineeModel model = LineeModel(body: [], code: 0, message: "", show: false);
  BannerModel banners = BannerModel(
      body: Banners(banners: []), code: 0, message: "", show: false);
  LastProductModel lastProduct =
      LastProductModel(body: [], code: 0, message: "", show: false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LogoAppBar(
        leftPressed: () {},
        rightPressed: () {},
        showLogo: true,
        logoSize: 90,
        rightWidget: const SizedBox(),
        title: "",
        roundedEdge: true,
        searchWidget: () {},
      ),
      body: Container(
          color: ThemeApp.white,
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: [
              FutureBuilder<BannerModel>(
                // banners Linee
                initialData: banners,
                future: BannerService.instance.getBanner(),
                builder: (context, AsyncSnapshot<BannerModel> snapshot) {
                  if (snapshot.hasData) {
                    banners = snapshot.data!;
                    if (model.code == 0) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.2,
                          child: CauroselImage(banners));
                    } else {
                      return Container(
                        child: Center(
                          child: Text(banners.message!),
                        ),
                      );
                    }
                  } else {
                    return Center(
                      child: Container(
                          height: 50,
                          width: 50,
                          child: const CircularProgressIndicator()),
                    );
                  }
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Linee",
                      style: ThemeApp.titleBlack(),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: 2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ThemeApp.gold),
                    )
                  ],
                ),
              ),
              FutureBuilder<LineeModel>(
                // cards Linee
                initialData: model,
                future: LineeService.instance.getLinee(),
                builder: (context, AsyncSnapshot<LineeModel> snapshot) {
                  if (snapshot.hasData) {
                    model = snapshot.data!;
                    if (model.code == 0) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.15,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: model.body!.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.15,
                                    height: MediaQuery.of(context).size.width *
                                        0.15,
                                    decoration: BoxDecoration(
                                        color: ThemeApp.white,
                                        borderRadius: BorderRadius.circular(10),
                                        border:
                                            Border.all(color: ThemeApp.gold),
                                        image: DecorationImage(
                                          image: NetworkImage(model.body![index]
                                              .categoria!.pathImage!),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: ThemeApp.gold,
                                            offset: const Offset(
                                              2.0,
                                              2.0,
                                            ),
                                            blurRadius: 5.0,
                                            spreadRadius: 0.05,
                                          )
                                        ]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.15,
                                        child: Text(
                                          model.body![index].nome!,
                                          textAlign: TextAlign.center,
                                          style: ThemeApp.mediumtitleGold(),
                                          overflow: TextOverflow.ellipsis,
                                        )),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      );
                    } else {
                      return Container(
                        child: Center(
                          child: Text(model.message!),
                        ),
                      );
                    }
                  } else {
                    return Center(
                      child: Container(
                          height: 50,
                          width: 50,
                          child: const CircularProgressIndicator()),
                    );
                  }
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Ultimi prodotti",
                      style: ThemeApp.titleBlack(),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.37,
                      height: 2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ThemeApp.gold),
                    )
                  ],
                ),
              ),
              FutureBuilder<LastProductModel>(
                // last product
                initialData: lastProduct,
                future: ProductService.instance.getLastProducts(),
                builder: (context, AsyncSnapshot<LastProductModel> snapshot) {
                  if (snapshot.hasData) {
                    lastProduct = snapshot.data!;
                    if (model.code == 0) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.5,
                        child: GridView.count(
                          primary: false,
                          childAspectRatio: 1,
                          padding: const EdgeInsets.all(10),
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          physics: NeverScrollableScrollPhysics(),
                          crossAxisCount: 2,
                          children: List.generate(
                              lastProduct.body!.length,
                              (index) => CardProductLast(
                                    product: lastProduct.body![index],
                                  )),
                        ),
                      );
                    } else {
                      return Container(
                        child: Center(
                          child: Text(banners.message!),
                        ),
                      );
                    }
                  } else {
                    return Center(
                      child: Container(
                          height: 50,
                          width: 50,
                          child: const CircularProgressIndicator()),
                    );
                  }
                },
              ),
            ],
          )),
    );
  }
}
