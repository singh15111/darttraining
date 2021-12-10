import 'package:flutter/material.dart';
import 'package:qussionandanswerapp05/homepage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void loginButton() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              "Login Page",
              style: TextStyle(fontSize: 15),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                controller: null,
                decoration: InputDecoration(
                    hintText: "Enter email",
                    labelText: "Enter plz email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                controller: null,
                decoration: InputDecoration(
                    hintText: "Enter Passwords",
                    labelText: "Enter plz Passwords",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),
            ElevatedButton(onPressed: loginButton, child: Text("Login")),
          ],
        ),
      ),
    );
  }
}
