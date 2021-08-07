import 'package:flutter/material.dart';
import 'car.dart';

class SecondPage extends StatefulWidget {
  SecondPage({
    Key? key,
    required this.title,
    required this.carproprty,
  }) : super(key: key);

  final String title;

  final Carproprty carproprty;

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('${widget.carproprty.carName}'),
            Text('${widget.carproprty.carNumber}', style: TextStyle(color:Colors.amberAccent),),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
