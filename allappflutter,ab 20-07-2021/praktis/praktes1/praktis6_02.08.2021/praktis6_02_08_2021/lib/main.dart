import 'package:flutter/material.dart';
import 'package:praktis6_02_08_2021/newpagedata.dart';
import 'animals.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _Button() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => NewPageData(
                  animalsName: AnimalsName(),
                ),
                ),
                );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        titleTextStyle: TextStyle(fontSize: 45),
        title: Text("data"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("data"),
            Expanded(
                child: Row(
              children: [
                ElevatedButton(onPressed: _Button, child: Text("CLICK ME"))
              ],
            ))
          ],
        ),
      ),
    );
  }
}
