import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:praktis4/buttonfunction.dart';

import 'package:praktis4/inputsecondtextfile.dart';
import 'inputtextedit.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _amountController = TextEditingController();
  TextEditingController _interestamountController = TextEditingController();
  TextEditingController _monthsController = TextEditingController();

  String res = "";

  void _calucaButton() {
    setState(() {
      double perincipalamount = double.parse(_amountController.text);
      double perincipalinterest = double.parse(_interestamountController.text);
      double perincipalmonths = double.parse(_monthsController.text);

      double caluCla =
          perincipalamount * perincipalinterest * perincipalmonths / 100;

      res = '$caluCla';
    });
  }

  void _clear() {
    setState(() {
      _amountController.text = "";
      _interestamountController.text = "";
      _monthsController.text = "";
      res = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Text(
          "INTEREST AND CALU APP",
          style: TextStyle(color: Colors.deepOrangeAccent),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            InputSecondText(_amountController, _interestamountController,
                _monthsController, "label", "hint", Colors.black, 8.4),
            Text(
              '$res',
              style: TextStyle(color: Colors.orangeAccent, fontSize: 45),
            ),
            ButtonFunction(_calucaButton, _clear, "_cleartitle", "_title"),
          ],
        ),
      ),
    );
  }
}
