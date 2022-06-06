// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_declarations, sized_box_for_whitespace

import 'dart:async';

import 'package:Imperya/pages/home_page.dart';
import 'package:Imperya/pages/register_page.dart';
import 'package:Imperya/theme/theme_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PolicyPage extends StatefulWidget {
  PolicyPage({Key? key}) : super(key: key);
  static final String tag = "Policy"; //route policy
  @override
  State<PolicyPage> createState() => _PolicyPageState();
}

class _PolicyPageState extends State<PolicyPage> {
  String policy = "";

  Future<String> readPolicyLocal() async {
    // questo metodo legge un file in locale, nello speficio
    return await rootBundle.loadString(
        'assets/data/privacy.txt'); // tramite il loadString, viene prelevato tutti i file di tipo text dal file indicato
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: ThemeApp.white),
        title: Text(
          "Privacy policy",
          style: ThemeApp.titleWhite(),
        ),
      ),
      backgroundColor: ThemeApp.white,
      body: FutureBuilder<String>(
          //questo widget costruisce gli elementi sulla base della risposta del metodo indicato nel "future"
          future: readPolicyLocal(),
          initialData:
              policy, //gli viene fornito un elemento policy ="" per dagli un riferimento al tipo di dato che deve lavorare questo FutureBuilder
          builder: (context, AsyncSnapshot<String> snapshot) {
            //il builder si incarica di imagazzinare la risposta del metodo indicato nel future all'interno dello snapshot
            //NB: il future è di tipo String, lo snapshot ospita un dato di tipo string, se il future torna un dato di tipo bool, lo snapshot ospita un dato di tipo bool, e cosi via per ogni tipo di dato- anche personalizzato
            if (!snapshot.hasData) {
              //se lo snapshot non contiene dati, viene mostratu un widget di caricamento
              return Center(
                  child: Container(
                      height: 50,
                      width: 50,
                      child: const CircularProgressIndicator()));
            } else {
              // se lo snapshot contiene dati
              policy = snapshot
                  .data!; // tali dati vengono inseriti nella variabile policy e il widget che viene costruito è quello finale utile all'app - ovvero lo stack con tutti i suoi elementi
              return Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height,
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.02,
                          bottom: MediaQuery.of(context).size.height * 0.12),
                      child: SingleChildScrollView(
                        child: Text(
                          policy,
                          style: ThemeApp.mediumtitleBlack(),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).size.height * 0.05),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: ThemeApp.gold,
                          elevation: 1,
                          fixedSize: Size(
                              MediaQuery.of(context).size.width * 0.6,
                              MediaQuery.of(context).size.height * 0.05),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, HomePage.tag);
                        },
                        child: Text(
                          "Accetta",
                          style: ThemeApp.titleWhite(),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }
          }),
    );
  }
}
