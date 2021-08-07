import 'package:flutter/material.dart';

import 'package:singupandlogin/singup.dart';

class loginPage extends StatefulWidget {
  loginPage({Key? key}) : super(key: key);

  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  void _SingUp() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SingUp()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          "AppBar",
          style: TextStyle(
              color: Colors.red, backgroundColor: Colors.black26, fontSize: 25),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Login Page"),
            Padding(
              padding: const EdgeInsets.only(left: 100.0, right: 40.0),
              child: TextField(
                controller: null,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "email",
                  labelText: "email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15.0),
              child: TextField(
                textAlign: TextAlign.center,
                controller: null,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  hintText: "Password",
                  prefixIcon: Icon(Icons.add_alert),
                  icon: Icon(Icons.ac_unit_rounded),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
              ),
            ),
            FloatingActionButton(
              onPressed: null,
              tooltip: "click me",
              child: Icon(Icons.login_sharp),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _SingUp,
        tooltip: "click me",
        child: Icon(Icons.single_bed),
      ),
      persistentFooterButtons: [
        IconButton(
            onPressed: () {
              print("Cim clicked");
            },
            icon: Icon(Icons.access_alarm_rounded)),
        IconButton(
            onPressed: () {
              print("Cim clicked");
            },
            icon: Icon(Icons.access_alarm_rounded)),
        IconButton(
            onPressed: () {
              print("Cim clicked");
            },
            icon: Icon(Icons.access_alarm_rounded)),
        IconButton(
            onPressed: () {
              print("Cim clicked");
            },
            icon: Icon(Icons.access_alarm_rounded)),
      ],
    );
  }
}
