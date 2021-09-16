import 'package:flutter/material.dart';
import 'listandmapwithlistdata.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ListOption select = ListData.listData[0];

  void selectButton(int index) {
    setState(() {
      select = ListData.listData[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        centerTitle: true,
        title: Text(select.title),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: ListData.listData.length,
            itemBuilder: (BuildContext context, int indext) {
              ListOption listOption = ListData.listData[indext];
              return ListTile(
                trailing: listOption.icon,
                leading: listOption.trailingicon,
                tileColor: listOption.color,
                title: Text(listOption.title),
                subtitle: Text(listOption.subtitle),
                onTap: () {
                  selectButton(indext);
                },
              );
            }),
      ),
    );
  }
}
