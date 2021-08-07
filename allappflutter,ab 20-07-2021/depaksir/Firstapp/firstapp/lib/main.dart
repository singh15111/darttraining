import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController amountController = TextEditingController();
  TextEditingController intrstController = TextEditingController();
  TextEditingController monthController = TextEditingController();

  String result = "";

  void calculateInterst() {
    setState(() {
      double principalAmount = double.parse(amountController.text);
      double interestRate = double.parse(intrstController.text);
      double months = double.parse(monthController.text);

      double calculateInterest = principalAmount * interestRate * months / 100;

      result = '$calculateInterest';
    });
  }

  void clearMathod() {
    setState(() {
      amountController.text = "";
      intrstController.text = "";
      monthController.text = "";
      result = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: amountController,
            ),
            TextField(
    controller:intrstController ,

            ),
            TextField(

              controller: monthController
            ),
            Text(result),
            ElevatedButton(
                onPressed: calculateInterst, child: Text("calculate")),
            ElevatedButton(onPressed: clearMathod, child: Text("clear")),
          ],
        ),
      ),
    );
  }
}
