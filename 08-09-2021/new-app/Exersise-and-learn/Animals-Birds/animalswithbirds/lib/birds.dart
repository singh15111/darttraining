import 'package:animalswithbirds/birdsdata.dart';
import 'package:flutter/material.dart ';

import 'birdsdata.dart';
import 'package:animalswithbirds/homescreen.dart';

class BirdsPage extends StatefulWidget {
  List<BirdsName> data;
  BirdsPage(this.data);

  @override
  _BirdsPageState createState() => _BirdsPageState();
}

class _BirdsPageState extends State<BirdsPage> {
  late BirdsName select;
  late List<BirdsName> data;

  _BirdsPageState() {
    data = widget.data;
    select = data[0];
  }
  void birdsButton(int index) {
    setState(() {
      select = data[index];
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen(select)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (
              BuildContext context,
              int indext,
            ) {
              BirdsName birdsVirableName = data[indext];
              return ListTile(
                trailing: birdsVirableName.image,
                title: Text(birdsVirableName.title),
                onTap: () {
                  birdsButton(indext);
                },
              );
            }),
      ),
    );
  }
}
