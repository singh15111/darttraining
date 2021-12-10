import 'package:flutter/material.dart';

class Singup extends StatefulWidget {
  Singup({Key? key}) : super(key: key);

  @override
  _SingupState createState() => _SingupState();
}

class _SingupState extends State<Singup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        children: [
          Text(
            "Singup Page",
            style: TextStyle(fontSize: 50),
          ),
          Padding(
            padding: const EdgeInsets.all(
              15.0,
            ),
            child: Container(
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter User Name",
                    labelText: "User Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
              ),
            ),
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
            padding: const EdgeInsets.all(
              15.0,
            ),
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
                child: ElevatedButton(onPressed: null, child: Text("Login")),
              ),
              ElevatedButton(onPressed: null, child: Text("data")),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 45.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: ElevatedButton(onPressed: null, child: Text("Singup")),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
