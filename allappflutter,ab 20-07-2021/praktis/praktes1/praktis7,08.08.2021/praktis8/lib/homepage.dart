import 'dart:ui';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _amount = TextEditingController();
  TextEditingController _interest = TextEditingController();
  TextEditingController _months = TextEditingController();

  String res = "";
  double caluButton = 0;

  void Clicked(String buttonvalue) {
    setState(() {
      double principalamount = double.parse(_amount.text);
      double principalinterest = double.parse(_interest.text);
      double principalmonths = double.parse(_months.text);
      caluButton = principalamount * principalinterest * principalmonths / 100;
      res = '$caluButton';
    });
  }

  Widget customButton(String buttonvalue) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Expanded(
          child: OutlinedButton(
        onPressed: () => Clicked(buttonvalue),
        child: Text("$buttonvalue",
            style: TextStyle(color: Colors.redAccent, fontSize: 25)),
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _amount,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: "ENTER AMOUNT",
                      hoverColor: Colors.redAccent,
                      labelText: "AMOUNT",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7.5))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _interest,
                  decoration: InputDecoration(
                      hintText: "ENTER INTEREST",
                      hoverColor: Colors.redAccent,
                      labelText: "ENTEREST",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7.5))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _interest,
                  decoration: InputDecoration(
                      hintText: "ENTER MONTHS",
                      hoverColor: Colors.redAccent,
                      labelText: "MONTHS",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7.5))),
                ),
              ),
              Text(
                '$res',
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          customButton(
                            "1",
                          ),
                          customButton("2"),
                          customButton("3"),
                          customButton("4"),
                        ],
                      ),
                      Row(
                        children: [
                          customButton("5"),
                          customButton("6"),
                          customButton("7"),
                          customButton("8"),
                        ],
                      ),
                      Row(
                        children: [
                          customButton("9"),
                          customButton("0"),
                          customButton("."),
                          customButton("C"),
                        ],
                      ),
                      Row(
                        children: [
                          customButton("="),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
