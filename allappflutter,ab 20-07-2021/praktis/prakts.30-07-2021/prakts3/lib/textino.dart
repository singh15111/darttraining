import 'package:flutter/material.dart';
import 'package:prakts3/buttoneditfile.dart';

import 'texteditingfile.dart';

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

  /* void calcualate() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => calCul()));
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: Center(
        child: Column(children: [
          TextEditFile(amountController, interestController, monthsController,
              "Enter Amount", " Amount", Colors.blueAccent, 8.0),
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
          Row(children: [
            ButtonNewFile(
                _coluCalate, _clear, "labelclear", "labelcaluc", "labeltext"),
          ]),
        ]),
      ),
    );

    // This trailing comma makes auto-formatting nicer for build methods.
  }
}
