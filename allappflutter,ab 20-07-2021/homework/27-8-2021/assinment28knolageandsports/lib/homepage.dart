import 'package:assinment28knolageandsports/sportdata.dart';
import 'package:assinment28knolageandsports/sports.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  _sportsButton(String title, List<Map<String, dynamic>> quesion) {
    setState(() {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => SportPage(title, quesion)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
        title: Text(
          "Knoalge And Sports",
          style: TextStyle(
              color: Colors.cyanAccent,
              fontWeight: FontWeight.bold,
              fontSize: 32),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    _sportsButton("Knowledge Quiz",
                        SportData.knolage as List<Map<String, dynamic>>);
                  },
                  child: Text("data")),
            ),
            ElevatedButton(
                onPressed: () {
                  _sportsButton("Sports",
                      SportData.knolage as List<Map<String, dynamic>>);
                },
                child: Text("sport")),
          ],
        ),
      ),
    );
  }
}
