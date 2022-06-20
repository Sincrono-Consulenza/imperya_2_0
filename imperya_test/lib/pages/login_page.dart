// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, curly_braces_in_flow_control_structures, unnecessary_new, non_constant_identifier_names, prefer_final_fields

import 'dart:async';
import 'dart:convert';
import 'package:Imperya/elements/elements.dart';
import 'package:Imperya/models/models.dart';
import 'package:Imperya/pages/pages.dart';
import 'package:Imperya/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static String tag = 'login'; //route login

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final prefs = References();
  final lang = Language();

  //da eliminare e sostituire con il bloc
  final loginController = StreamController<String>();
  String logged = "";

//controller
// questi controller vengono inseriti nei textfield per poter accedere a dati che vengono inseriti in input - se non vengono istanziati - flutter non li riconosce e quindi non si ha accesso ai dati degli input (testi in questo caso)
  TextEditingController _email = new TextEditingController();
  TextEditingController _password = new TextEditingController();

//obscure password
  bool showPsw = false;

  @override
  void dispose() {
    loginController.close();
    super.dispose();
  }

  Future<void> login(String username, String password) async {
    await Future.delayed(Duration(seconds: 1), () async {
      logged = await rootBundle.loadString("assets/data/users.json");
    });
    //controllo dell'utenza
    if (logged.contains(username))
      loginController.sink.add("login");
    else
      loginController.sink.add("error");
  }

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        // la scelta di utilizzare lo stack come widget base del body sta nella sua liberta di inserire i widget in un punto specifico tramite gli Alignment e
        // dato che vi sono presenti elementi di input che sollevano la tastiera del dispositivo, gli elementi non vengono "spostati" da quest'ultima e quindi non ce bisogno di inserire
        // un resizeToAvoidBottomInset per evitare tale problema.
        //naturalmente si potrebbe utilizzare anche una column che inserisce gli elementi uno sotto l'altro invece di uno stack
        children: [
          Align(
            //logo
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: screen.width * 0.6,
                height: screen.height * 0.3,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/logo.png"))),
              ),
            ),
          ),
          Padding(
              // form login
              padding: EdgeInsets.only(
                  left: screen.width * 0.05,
                  right: screen.width * 0.05,
                  top: screen.height * 0.18),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "UserName",
                      style: ThemeApp.textBlack(size: 15),
                    ),
                  ),
                  FormTextField(
                    //widget personalizzato. - vedi "..\lib\elements\form_text_filed.dart"
                    text: "Username",
                    controller: _email,
                    suffixIcon: Icon(Icons.people),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Password",
                      style: ThemeApp.textBlack(size: 15),
                    ),
                  ),
                  FormTextField(
                    text: "Password",
                    controller: _password,
                    obscureText: showPsw,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          showPsw = !showPsw;
                        });
                      },
                      icon: Icon(
                        !showPsw
                            ? Icons.remove_red_eye_outlined
                            : Icons.remove_red_eye,
                        size: 17.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screen.height * 0.05,
                  ),
                  Center(
                    child: StreamBuilder<String>(
                        initialData: "",
                        stream: loginController.stream,
                        builder: (context, snapshot) {
                          if (snapshot.hasData && snapshot.data == "login")
                            Navigator.pushNamed(context, HomePage.tag);

                          if (snapshot.hasData && snapshot.data == "error")
                            return AlertDialog(
                              title: Text("Username e/o password errati"),
                              actions: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    fixedSize: Size(screen.width * 0.6,
                                        screen.height * 0.05),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                  ),
                                  onPressed: () {
                                    // qui si può invocare il metodo del login quando si preme il bottone
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    "Indietro",
                                    style: ThemeApp.titleWhite(),
                                  ),
                                )
                              ],
                            );
                          if (snapshot.connectionState ==
                                  ConnectionState.active &&
                              snapshot.data == "load")
                            return CircularProgressIndicator();
                          else
                            return ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(
                                    screen.width * 0.6, screen.height * 0.05),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              onPressed: () {
                                // qui si può invocare il metodo del login quando si preme il bottone
                                loginController.sink.add("load");
                                login(_email.text, _password.text);
                              },
                              child: Text(
                                "Accedi",
                                style: ThemeApp.titleWhite(),
                              ),
                            );
                        }),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: screen.width * 0.3,
                        height: 1,
                        decoration: BoxDecoration(color: ThemeApp.gold),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "Oppure",
                          style: ThemeApp.textBlack(),
                        ),
                      ),
                      SizedBox(
                        height: screen.height * 0.07,
                      ),
                      Container(
                        width: screen.width * 0.3,
                        height: 1,
                        decoration: BoxDecoration(color: ThemeApp.gold),
                      ),
                    ],
                  ),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: ThemeApp.white,
                        fixedSize:
                            Size(screen.width * 0.6, screen.height * 0.05),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, RegisterPage.tag);
                      },
                      child: Text(
                        "Registrati",
                        style: ThemeApp.titleGold(),
                      ),
                    ),
                  ),
                ],
              )),
          Align(
            //bottone per accedere senza login
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: screen.width,
                  height: screen.height * 0.2,
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "accedi senza ",
                          style: ThemeApp.textBlack(),
                        ),
                        TextButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, PolicyPage.tag),
                          child: Text(
                            "Login",
                            style: ThemeApp.mediumtitleBlack(),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
