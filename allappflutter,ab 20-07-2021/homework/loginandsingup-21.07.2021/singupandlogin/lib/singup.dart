import 'package:flutter/material.dart';

class SingUp extends StatefulWidget {
  SingUp({Key? key}) : super(key: key);

  @override
  _SingUpState createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("SingUp"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Sing Up"),
            TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: "plz enter ur name",
                  labelText: "Full Name",
                )),
            TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "plz enter ur email",
                  labelText: "Email",
                )),
            TextField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  hintText: "plz enter ur Password",
                  labelText: "Password",
                ))
          ],
        ),
      ),
    );
  }
}
