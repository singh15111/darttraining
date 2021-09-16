import 'package:flutter/material.dart';

class Styles extends StatelessWidget {
  String title;
  var trailing;

  Styles(
    this.title,
    this.trailing,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text("data"),
          trailing: Icon(Icons.ac_unit_outlined),
          tileColor: Colors.amber,
        ),
        ListTile(
          title: Text("data"),
          trailing: Icon(Icons.ac_unit_outlined),
          tileColor: Colors.amber,
        ),
        ListTile(
          title: Text("data"),
          trailing: Icon(Icons.ac_unit_outlined),
          tileColor: Colors.amber,
        ),
      ],
    );
  }
}
