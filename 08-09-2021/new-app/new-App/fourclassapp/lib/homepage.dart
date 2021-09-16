import 'package:flutter/material.dart';
import 'package:fourclassapp/detailpage.dart';
import 'package:fourclassapp/listallclass.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void transportButton() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (contaxt) => DetailPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("class"),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: ListAllDetail.listalldetailcatagoryname.length,
            itemBuilder: (BuildContext context, int indext) {
              CatagorysDetailName listvarible =
                  ListAllDetail.listalldetailcatagoryname[indext];
              return ListTile(
                  title: Text(listvarible.title),
                  onTap: () {
                    transportButton();
                  });
            }),
      ),
    );
  }
}
