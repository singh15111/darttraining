import 'package:flutter/material.dart';
import 'package:praktis26/maps.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  // quesion == 0 ?"pjdedj":"jjoij";

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void button(String testing) {
    print(testing);
  }

  void _incrementCounter() {
    setState(() {
      if (_counter < Fruits.quesans.length - 1) {
        _counter++;
      } else {
        _counter = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 200,
              width: 200,
              color: Colors.green,
              child: Text(Fruits.quesans[_counter]['quesion']),
            ),
            ...(Fruits.quesans[_counter]['ansers'] as List)
                .map((e) => ElevatedButton(
                    onPressed: _incrementCounter, child: Text(e)))
                .toList(),
            ListTile(
              title: Text(
                "Click Me",
                style: TextStyle(color: Colors.greenAccent),
              ),
              onTap: () {
                button("Singh");
              },
            ),
          ],
        ),
      ),
    );
  }
}
