import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SingUp extends StatefulWidget {
  SingUp({Key? key}) : super(key: key);

  @override
  _SingUpState createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  TextEditingController _name = TextEditingController();
  TextEditingController _password = TextEditingController();
  String nam = "";
  String pass = "";

  String _textinput = "";

  var color;

  void plz;

  void Clear() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("singup"),
        ),
        body: Center(
          child: Column(
            children: [
              Text("username"),
              TextField(
                controller: _name,
              ),
              Text("passwords"),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "Login",
                    labelText: "Sandhu",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4.0)))),
                controller: _password,
              ),
              FloatingActionButton(
                onPressed: Clear,
                tooltip: "plz Click",
                child: Icon(Icons.login),
              ),
              Text("$_textinput"),
              FloatingActionButton(
                onPressed: Clear,
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
