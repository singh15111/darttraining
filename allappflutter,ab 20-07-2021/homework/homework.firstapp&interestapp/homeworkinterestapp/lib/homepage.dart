import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'calu.dart';
import 'caluactionbutton.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ///TextEditingController
  TextEditingController amountController = TextEditingController();
  TextEditingController interestController = TextEditingController();
  TextEditingController monthsController = TextEditingController();
  String result = "";

  void _coluCalate() {
    setState(() {
      double principalAmount = double.parse(amountController.text);
      double interestAmount = double.parse(interestController.text);
      double monthsRate = double.parse(monthsController.text);

      double colucalate = principalAmount * interestAmount * monthsRate / 100;
      result = '$colucalate';
    });
  }

  void _clear() {
    setState(() {
      amountController.text = "";
      interestController.text = "";
      monthsController.text = "";
      result = "";
    });
  }

  void calcualate() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => calCul()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: Center(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: amountController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: "Enter Amount",
                      labelText: "AMOUNT",
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(5.2)))),
                  style: TextStyle(color: Colors.cyan),
                ),
              ),
              Container(
                color: Colors.blue,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: interestController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            fillColor: Colors.orangeAccent,
                            hintText: "PLEASE ENTER INTEREST",
                            hintStyle: TextStyle(color: Colors.amber),
                            labelText: "INTEREST",
                            labelStyle: TextStyle(
                                decorationColor: Colors.deepPurpleAccent),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.2)))),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.redAccent,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: monthsController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            fillColor: Colors.orangeAccent,
                            hintText: "PLEASE ENTER MONTHS",
                            hintStyle: TextStyle(color: Colors.pink),
                            labelText: "MONTHS",
                            labelStyle: TextStyle(
                                decorationColor: Colors.deepPurpleAccent),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.2)))),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    children: [
                      Text(
                        "$result",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(58.0),
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CaluActionButton(_coluCalate, "Interest"),
                      CaluActionButton(_clear, "Clear"),
                      CaluActionButton(_clear, "Testing"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
