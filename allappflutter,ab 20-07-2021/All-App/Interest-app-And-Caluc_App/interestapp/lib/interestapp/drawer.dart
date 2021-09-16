import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Container(
              width: double.infinity,
              child: CircleAvatar(
                backgroundColor: Colors.amber,
              ),
              decoration: BoxDecoration(),
            ),
          ),
          ListTile(
            tileColor: Colors.deepOrangeAccent,
            title: Text("home"),
            trailing: Icon(Icons.home),
            onTap: null,
          ),
          ListTile(
            tileColor: Colors.deepOrangeAccent,
            title: Text(
              "Apple",
              style: TextStyle(color: Colors.cyanAccent),
            ),
            trailing: Icon(Icons.home),
            onTap: null,
          ),
          ListTile(
            tileColor: Colors.deepOrangeAccent,
            title: Text("Banana"),
            trailing: Icon(Icons.home),
            onTap: null,
          ),
          ListTile(
            tileColor: Colors.deepOrangeAccent,
            title: Text("Orange"),
            trailing: Icon(Icons.home),
            onTap: null,
          ),
          ListTile(
            tileColor: Colors.deepOrangeAccent,
            title: Text("Mango"),
            trailing: Icon(Icons.ac_unit),
            onTap: null,
          ),
        ],
      ),
    );
  }
}
