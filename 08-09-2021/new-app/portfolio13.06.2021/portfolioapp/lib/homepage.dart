import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var circleAvatar = CircleAvatar();
    return Scaffold(
      appBar: AppBar(
        title: Text("Sidhu"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 45, top: 15),
                child: CircleAvatar(
                  radius: 40,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                children: [Text("My Name Is Sidhu"), Text("I am student")],
              )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 45),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.school_outlined),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Ready School")
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Icon(Icons.school_outlined),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Ready School")
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Icon(Icons.school_outlined),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Ready School")
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Icon(Icons.school_outlined),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Ready School")
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Icon(Icons.school_outlined),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Ready School")
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
