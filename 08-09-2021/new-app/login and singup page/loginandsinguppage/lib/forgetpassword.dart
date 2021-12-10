import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  ForgetPassword({Key? key}) : super(key: key);

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              Text(
                "Forget Password Page",
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
                        hintText: "Enter New Password",
                        labelText: "Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50))),
                  )))
            ],
          ),
        ));
  }
}
