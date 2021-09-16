import 'dart:html';

import 'package:flutter/material.dart';
import 'package:praktis4/buttonfunction.dart';
import 'package:praktis4/calucater.dart';

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

  void _caluCater() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Calucater()));
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
            Text('$res'),
            ButtonFunction(_calucaButton, _clear, "Caluca", "Clear"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Column(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          _caluCater();
                        },
                        child: Text(
                          "data",
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 22.2),
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
