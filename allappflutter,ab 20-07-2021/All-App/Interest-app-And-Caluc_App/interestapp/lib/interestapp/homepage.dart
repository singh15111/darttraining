import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:interestapp/interestapp/drawer.dart';
import 'package:interestapp/interestapp/fruit.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var sel = 0;

  void button(value) {
    setState(() {
      sel = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.deepPurpleAccent,
          title: Text(
            "Royal Sidhu",
            style: TextStyle(color: Colors.deepOrangeAccent),
          ),
          // MyDrawer(),
        ),
        drawer: MyDrawer(),
        bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("Apple"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("Mango"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("Banana"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text(
                  "Oranges",
                ),
              ),
            ],
            selectedItemColor: Colors.amber,
            unselectedItemColor: Colors.red,
            currentIndex: sel,
            onTap: (value) {
              button(value);
              //value = Fruits.fruitName[0];
//sel = Fruits.fruitName[0];
            }),
        body: Center(
            child: Container(
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: NetworkImage(Fruits.fruitName[sel]))),
        )));
  }
}
