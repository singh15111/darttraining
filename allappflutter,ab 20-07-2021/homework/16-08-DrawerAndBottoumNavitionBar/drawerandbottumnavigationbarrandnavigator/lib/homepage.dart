///import 'package:drawerandbottumnavigationbarrandnavigator/drawer.dart';
import 'package:drawerandbottumnavigationbarrandnavigator/fruitutil.dart';
import 'package:flutter/material.dart';

import 'apple.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _apple() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        ///actions: [PopupMenuButton(itemBuilder: itemBuilder)],
      ),

      // DrawerPage(),
      //  Drawer(),

      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("hey i am header")),
            ListTile(
              title: Text(
                "HOME PAGE",
              ),
              tileColor: Colors.deepPurpleAccent,
              trailing: Icon(Icons.home),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (contaxt) => Apples(FruitUtil.fruitsName[0])));
              },
            )
          ],
        ),
      ),
    );
  }
}
