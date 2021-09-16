import 'package:flutter/material.dart';

class SportPage extends StatefulWidget {
  String title;
  List<Map<String, dynamic>> quesion;

  SportPage(this.title, this.quesion);
  @override
  _SportPageState createState() => _SportPageState();
}

class _SportPageState extends State<SportPage> {
  int counter = 0;

  sportButton() {
    setState(() {
      if (counter < widget.quesion.length - 1) {
        counter++;
      } else {
        counter = 0;
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 200,
                width: 200,
                child: Text(widget.quesion[counter]['qussin']),
                decoration: BoxDecoration(color: Colors.amber),
              ),
              ...(widget.quesion[counter]['answer'] as List)
                  .map((e) =>
                      ElevatedButton(onPressed: sportButton, child: Text(e)))
                  .toList(),
            ],
          ),
        ),
      ),
    );
  }
}
