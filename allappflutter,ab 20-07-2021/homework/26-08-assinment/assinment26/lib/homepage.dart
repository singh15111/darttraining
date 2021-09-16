import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  List Fruits = [
    {
      "a": "a for ",
      "answer": ["Apple" "" "a"]
    },
    {
      "b": "b for ",
      "answer": ["Apple" "" "a"]
    },
    {
      "c": "c for ",
      "answer": ["Apple" "" "a"]
    },
    {
      "d": "d for ",
      "answer": ["Apple" "" "a"]
    },
    {
      "e": "e for ",
      "answer": ["Apple" "" "a"],
    },
  ];

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String res = "";
  int sel = 0;
  void button(value) {
    sel = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("A"), onTap: null,
            // currentIndex: sel,
          ),
          ListTile(
            title: Text("b"),
            onTap: (null),
          ),
          Container(
            height: 150,
            width: 50,
            child: Text(widget.Fruits[sel]["answer"][0]),
            decoration: BoxDecoration(
              color: Colors.cyan,
            ),
          )
        ],
      ),
    );
  }
}
