import 'package:flutter/material.dart';
import 'package:listwithmap/allcatagorydata.dart';
import 'package:listwithmap/detailscreen.dart';

class ListScreen extends StatefulWidget {
  List<dynamic> Screen;
  ListScreen(this.Screen);

  @override
  _ListScreenState createState() => _ListScreenState(Screen);
}

class _ListScreenState extends State<ListScreen> {
  dynamic select;
  List<dynamic> data;
  _ListScreenState(this.data) {
    select = data[0];
  }
  void listButton(int index) {
    setState(() {
      select = data[index];
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailScreen(select, select.tit)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      
      body: 


 ListView.builder(
          itemCount: widget.Screen.length,
          itemBuilder: (BuildContext context, int index) {
            dynamic myScreen = widget.Screen[index];
            return ListTile(
              title: Text(myScreen.tit),
              onTap: () {
                listButton(index);
              },
            );
          }),








    );
  }
}
