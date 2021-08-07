import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _simplec = TextEditingController();
  TextEditingController _newsim = TextEditingController();
  int one = 0;
  int two = 0;

  int _counter = 0;
  String _myname = "";

  void _multiPly(int choice) {
    setState(() {
      one = int.parse(_simplec.text);
      two = int.parse(_newsim.text);
      int resu = 0;

      switch (choice) {
        case 1:
          resu = one + two;
          break;

        case 2:
          resu = one - two;
          break;
        case 3:
          resu = one * two;
          break;
        case 4:
          resu = (one / two) as int;
          break;

        default:
          resu = one % two;
          break;
      }

      _myname = "multifacton to number ${resu}";

      _counter++;
    });
  }

  TextField createTextField(TextEditingController editingController) {
    return TextField(
      controller: editingController,
    );
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
              createTextField(
                _simplec,
              ),
              createTextField(
                _newsim,
              ),
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_myname',
                style: Theme.of(context).textTheme.headline4,
              ),
              ElevatedButton(
                  onPressed: () {
                    _multiPly(1);
                  },
                  child: Text("multiply")),
              ElevatedButton(
                  onPressed: () {
                    _multiPly(2);
                  },
                  child: Text("mains")),
              ElevatedButton(
                  onPressed: () {
                    _multiPly(3);
                  },
                  child: Text("devide")),
              ElevatedButton(
                onPressed: () {
                  _multiPly(4);
                },
                child: Text("mode"),
              ),
            ])));
    /* FloatingActionButton(
              onPressed: null,
              tooltip: 'Increment',
              child: Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: null,
              tooltip: 'Increment',
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),*/

    // This trailing comma makes auto-formatting nicer for build methods.
  }
}
