import 'dart:html';

import 'package:flutter/material.dart';
import 'package:navigationandbuttoumwitlistandmapandclass/dtail.dart';

class DrawerPage extends StatefulWidget {
  // Function _function;
  String trailing, title;
  DrawerPage(this.trailing, this.title);

  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              child: CircleAvatar(
            backgroundColor: Colors.deepPurple,
          )),
          ListTile(
            onTap: () {
              //_function();
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Detail()));
            },
            trailing: Icon(Icons.home_max),
            title: Text("data"),
          ),
          ListTile(
            onTap: () {
              //_function();
            },
            trailing: Icon(Icons.home_max),
            title: Text("data"),
          ),
          ListTile(
            onTap: () {
              //_function();
            },
            trailing: Icon(Icons.home_max),
            title: Text("data"),
          ),
          ListTile(
            onTap: () {
              //_function();
            },
            trailing: Icon(Icons.home_max),
            title: Text("data"),
          ),
        ],
      ),
    );
  }
}
