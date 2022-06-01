// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_declarations, sized_box_for_whitespace

import 'dart:async';

import 'package:Imperya/pages/home_page.dart';
import 'package:Imperya/pages/register_page.dart';
import 'package:Imperya/theme/theme_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PolicyPage extends StatefulWidget {
  PolicyPage({Key? key}) : super(key: key);
  static final String tag = "Policy";
  @override
  State<PolicyPage> createState() => _PolicyPageState();
}

class _PolicyPageState extends State<PolicyPage> {
  String policy = "";

  Future<String> readPolicyLocal() async {
    return await rootBundle.loadString('assets/data/privacy.txt');
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
          future: readPolicyLocal(),
          initialData: policy,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(
                  child: Container(
                      height: 50,
                      width: 50,
                      child: const CircularProgressIndicator()));
            } else {
              policy = snapshot.data!;
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
