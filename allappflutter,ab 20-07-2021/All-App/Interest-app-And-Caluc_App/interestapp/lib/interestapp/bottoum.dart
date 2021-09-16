import 'package:flutter/material.dart';
import 'package:interestapp/interestapp/fruit.dart';

class Bottoums extends StatelessWidget {
  int sel;
  Function incriment;
  Bottoums(this.incriment, this.sel);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
          incriment;
          //value = Fruits.fruitName[0];
//sel = Fruits.fruitName[0];
        });
  }
}
