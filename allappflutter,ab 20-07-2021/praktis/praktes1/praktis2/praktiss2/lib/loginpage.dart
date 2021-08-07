import 'dart:html';

import 'package:flutter/material.dart';
import 'singup.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailAddress = TextEditingController();
  TextEditingController _password = TextEditingController();

  void SingUppage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SingUp()));

    if (emailAddress == false) {
      print("object");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // home: SingUp(),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: TextField(
                controller: emailAddress,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "Email",
                    labelText: "Email .",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: _password,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "Password",
                    labelText: "PASSWORD .",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)))),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: SingUppage,
        child: Icon(Icons.ac_unit_sharp),
      ),
    );
  }
}
