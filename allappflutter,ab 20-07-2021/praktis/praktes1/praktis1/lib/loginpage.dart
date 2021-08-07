import 'package:flutter/material.dart';

import 'package:praktis1/forgetpasswod.dart';
import 'package:praktis1/singup.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _name = TextEditingController();
  TextEditingController _password = TextEditingController();
  String nam = "";
  String pass = "";

  String _textinput = "";

  void navegateToForgetPassword() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ForfotPasswordPage()));
  }

  void navegateToSingup() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SingUp()));
  }

  void Button() {
    setState(() {
      nam = _name.text;
      pass = _password.text;

      _textinput = nam;
      _textinput = pass;
    });
  }

  void Clear() {
    setState(() {});

    if (_textinput == 0) {
    } else {}
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Center(
          child: Column(
            children: [
              Text("LoginPage"),
              TextField(
                controller: _name,
              ),
              Text("passwords"),
              TextFormField(
                controller: _password,
              ),
              FloatingActionButton(
                onPressed: navegateToSingup,
                tooltip: "plz Click",
                child: Icon(Icons.login),
              ),
              Text("$_textinput"),
              FloatingActionButton(
                onPressed: navegateToForgetPassword,
                tooltip: "Clear",
                child: Icon(
                  Icons.clear_all,
                ),
              ),
            ],
          ),
        ),
      );
}
