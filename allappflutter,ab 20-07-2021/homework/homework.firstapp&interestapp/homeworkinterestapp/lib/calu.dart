import 'package:flutter/material.dart';

class calCul extends StatefulWidget {
  calCul({Key? key}) : super(key: key);

  @override
  _calCulState createState() => _calCulState();
}

class _calCulState extends State<calCul> {
  /// TextEditingController firstNumber = TextEditingController();
  /// TextEditingController secondNumber = TextEditingController();

  int one = 0;
  int two = 0;
  int result = 0;

  void button(buttonvalue) {
    setState(() {
      ///one = int.parse(firstNumber.text);
      ///two = int.parse(secondNumber.text);
      String myresult = "";
      switch (buttonvalue) {
        case 1:
          button(buttonvalue);
          result = "" as int;
          break;
        default:
      }
    });
  }

  coustmButton(String buttonvalue) {
    return Expanded(
        child: OutlinedButton(
            onPressed: () => button(buttonvalue), child: Text("$buttonvalue")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Text("CALCUALATER"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Expanded(
              child: Container(
                  child: Column(
                children: [
                  /* TextField(
                    controller: firstNumber,
                  ),
                  TextField(
                    controller: secondNumber,
                  ),*/
                ],
              )),
            ),
            Row(
              children: [
                coustmButton("1"),
                coustmButton("2"),
                coustmButton("3"),
                coustmButton("4"),
              ],
            ),
            Row(
              children: [
                coustmButton("5"),
                coustmButton("6"),
                coustmButton("7"),
                coustmButton("8"),
              ],
            ),
            Row(
              children: [
                coustmButton("9"),
                coustmButton("0"),
                coustmButton("+"),
                coustmButton("-"),
              ],
            ),
            Row(
              children: [
                coustmButton("*"),
                coustmButton("/"),
                coustmButton("%"),
                coustmButton("."),
              ],
            )
          ],
        ),
      ),
    );
  }
}
