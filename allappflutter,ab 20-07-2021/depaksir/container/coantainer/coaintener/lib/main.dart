import 'package:flutter/material.dart';

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

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
          margin: EdgeInsets.all(60.5),
          //padding: EdgeInsets.only(left: 45, top: 45),
          alignment: Alignment.center,
          child: Text("data"),
          height: 500,
          width: 400,
          // color: Colors.amberAccent,
          decoration: BoxDecoration(
              color: Colors.blueGrey,
              shape: BoxShape.rectangle,
              gradient: LinearGradient(
                  /* begin: Alignment.topRight,
                  end: Alignment.center,*/
                  stops: [
                    0.1,
                    0.2,
                    0.3,
                    0.4,
                  ], colors: [
                Colors.amberAccent,
                Colors.blue,
                Colors.transparent,
                Colors.deepPurpleAccent,
              ]),
              border: Border.all(
                color: Colors.cyanAccent,
                width: 12,
              ),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(5)),
              image: DecorationImage(
                  fit: BoxFit.scaleDown,
                  image: NetworkImage(
                      "https://th.bing.com/th/id/OIP.WtnU9WUh7x3E6z1MbalbnwHaE7?w=238&h=180&c=7&o=5&pid=1.7")))),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
///// radial,shadow