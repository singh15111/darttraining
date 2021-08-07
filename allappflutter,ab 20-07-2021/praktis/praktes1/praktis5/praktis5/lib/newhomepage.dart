import 'package:flutter/material.dart';
import 'inputtext.dart';
class NewHomePage extends StatefulWidget {
  NewHomePage({Key? key}) : super(key: key);

  @override
  _NewHomePageState createState() => _NewHomePageState();
}

class _NewHomePageState extends State<NewHomePage> {
  TextEditingController _amount = TextEditingController();
  TextEditingController _interest = TextEditingController();

  TextEditingController _months = TextEditingController();

  String result = "";

  void IntersetButton() {
    setState(() {
      double allamount = double.parse(_amount.text);
      double allinterest = double.parse(_interest.text);
      double allmonths = double.parse(_months.text);
      double caluCal = allamount * allinterest * allmonths / 100;
      result =  '$caluCal';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("data"),
      ),
      body: Center(
child:Column(
  children: [
    InputText(_amount, _interest, _months, "label", "hint", Colors.amber, 8.0),

    Text('$result'),


   
  ],
),

      
      ),
      
    );
  }
}
