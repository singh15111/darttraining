import 'package:flutter/material.dart';

class ForfotPasswordPage extends StatefulWidget {
  ForfotPasswordPage({Key? key}) : super(key: key);

  @override
  _ForfotPasswordPageState createState() => _ForfotPasswordPageState();
}

class _ForfotPasswordPageState extends State<ForfotPasswordPage> {
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
          title: Text("Forgetpassword"),
        ),
        body: Center(
          child: Column(
            children: [
              Text("PasswordPage"),
              TextField(
                controller: _name,
              ),
              Text("passwords"),
              TextFormField(
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
