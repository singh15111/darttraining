import 'package:alphabitandtranspot/catagoryall.dart';
import 'package:alphabitandtranspot/catagorysdetailpage.dart';
import 'package:flutter/material.dart';

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
  void catagorysButton(int index) {
    setState(() {
      select = data[index];
      switch (select.names) {
        case " TransportData":
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      CatagoryDetailPage(AllCatagory.transportdata)));
          break;
        case "AlphabitData":
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      CatagoryDetailPage(AllCatagory.alphabitdata)));
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text("Transport And Alphabit"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: AllCatagory.allcatagory.length,
          itemBuilder: (BuildContext context, int indext) {
            CatagorysName catagoryname = AllCatagory.allcatagory[indext];
            return ListTile(
              title: Text(catagoryname.names),
              onTap: () {
                catagorysButton(indext);
              },
            );
          }),
    );
  }
}
