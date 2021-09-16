import 'dart:html';

import 'package:animalswithbirds/animals.dart';
import 'package:animalswithbirds/birds.dart';
import 'package:animalswithbirds/birdsdata.dart';
import 'package:animalswithbirds/homepage.dart';
import 'package:flutter/material.dart';

class EnteryScreen extends StatefulWidget {
  EnteryScreen({Key? key}) : super(key: key);

  @override
  _EnteryScreenState createState() => _EnteryScreenState();
}

class _EnteryScreenState extends State<EnteryScreen> {
  void animals() {
    setState(() {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => HomePage(AnimalsData.animalsdata)));
    });
  }

  void birds() {
    setState(() {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => HomePage(BirdsData.brdsdata)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: animals, child: Text("Animals")),
            ),
            ElevatedButton(onPressed: birds, child: Text("Birds")),
          ],
        ),
      ),
    );
  }
}
