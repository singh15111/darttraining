import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _login = TextEditingController();

  TextEditingController _password = TextEditingController();

  String myform = "";

  void clickMe() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: Center(
        child: Column(
          children: [
            
            TextField(
              controller: _login,
            ),
            TextField(
              controller: _password,
            ),
            FloatingActionButton(
              onPressed: clickMe,
              tooltip: "hey",
              child: Icon(Icons.ac_unit),
            )
          ],
        ),
      ),
    );
  }
}
