import 'dart:html';

import 'package:flutter/material.dart';
import 'package:loginandsinguppage/forgetpassword.dart';
import 'package:loginandsinguppage/homepage.dart';
import 'package:loginandsinguppage/singup.dart';

class LoginPage extends StatefulWidget {
  Map<String, dynamic> name;
  LoginPage(this.name);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameco = TextEditingController();

  void login() {
    setState(() {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => HomePage(widget.name)));
    });
  }

  void singup() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Singup()));
    });
  }

  void forgetpassword() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ForgetPassword()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        children: [
          Text(
            "Login Page",
            style: TextStyle(fontSize: 50),
          ),
          Padding(
            padding: const EdgeInsets.all(
              15.0,
            ),
            child: Container(
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter Email",
                    labelText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: login, child: Text("Login")),
              ),
              ElevatedButton(
                  onPressed: forgetpassword, child: Text("Forget Password")),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 45.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child:
                      ElevatedButton(onPressed: singup, child: Text("Singup")),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
