// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, curly_braces_in_flow_control_structures, unnecessary_new, non_constant_identifier_names, prefer_final_fields

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:imperya_test/models/users.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _email = new TextEditingController();
  TextEditingController _password = new TextEditingController();

  Future<String> Login(String email, String passwrod) async {
    UserElement currentUser = new UserElement(user: email, psw: passwrod);
    final String response =
        await rootBundle.loadString('assets/data/users.json');
    final User data = User.fromJson(jsonDecode(response));
    if (data.users.contains(currentUser)) print("Login avvenuto con successo");
    return "true";
  }

//widget
  Widget LoginButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Login(_email.text, _password.text);
        },
        child: Container(
          color: Colors.redAccent,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text("Login"),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("Login"),
        // ),
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              color: Colors.grey[300],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text("Email"),
                    TextField(
                      controller: _email,
                      onChanged: (value) => print(value),
                    ),
                  ],
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              color: Colors.grey[300],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text("Password"),
                    TextField(
                      controller: _password,
                    ),
                  ],
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Login(_email.text, _password.text);
            },
            child: Container(
              color: Colors.redAccent,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text("Login"),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        FutureBuilder(
          initialData: "false",
          future: Login(_email.text, _password.text),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              String value = snapshot.data.toString();
              return Column(
                children: [Text(value)],
              );
            } else
              return CircularProgressIndicator();
          },
        )
      ],
    ));
  }
}
