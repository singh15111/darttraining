import 'package:animalswithbirds/animalsname.dart';
import 'package:animalswithbirds/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:animalswithbirds/animals.dart';

class HomePage extends StatefulWidget {
  List<dynamic> data;
  HomePage(this.data);

  @override
  _HomePageState createState() => _HomePageState(data);
}

class _HomePageState extends State<HomePage> {
  late dynamic select;
  List<dynamic> data;
  _HomePageState(this.data) {
    select = data[0];
  }

  void button(int index) {
    setState(() {
      select = data[index];
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen(select)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text("Animals And Birds"),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (
              BuildContext context,
              int indext,
            ) {
              dynamic animalsvaribleName = data[indext];
              return ListTile(
                trailing: animalsvaribleName.image,
                title: Text(animalsvaribleName.title),
                onTap: () {
                  button(indext);
                },
              );
            }),
      ),
    );
  }
}
