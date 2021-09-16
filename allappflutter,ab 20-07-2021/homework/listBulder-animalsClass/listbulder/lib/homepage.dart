import 'package:flutter/material.dart';
import 'package:listbulder/homescreen.dart';
import 'animals.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AnimalsName select = AnimalsData.animalname[0];

  void button(int index) {
    setState(() {
      select = AnimalsData.animalname[index];
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeSreen(select)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(select.title),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: AnimalsData.animalname.length,
            itemBuilder: (
              BuildContext context,
              int indext,
            ) {
              AnimalsName animalsname = AnimalsData.animalname[indext];
              return ListTile(
                trailing: animalsname.icon,
                leading: animalsname.icons,
                tileColor: animalsname.color,
                title: Text(animalsname.title),
                subtitle: Text(animalsname.subtitle),
                onTap: () {
                  button(indext);
                },
              );
            }),
      ),
    );
  }
}
