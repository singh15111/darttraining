import 'package:flutter/material.dart';
import 'package:listandmap/detailpage.dart';
import 'package:listandmap/maps.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      drawer: Drawer(
        child: ListView(children: [
          ...DrawerList.drawelist
              .map((e) => ListTile(
                    title: Text(e.title),
                    subtitle: Text(e.subtitle),
                    trailing: e.icon,
                    leading: e.icontrailing,
                    onTap: () {},
                  ))
              .toList()
        ]),
      ),
    );
  }
}
