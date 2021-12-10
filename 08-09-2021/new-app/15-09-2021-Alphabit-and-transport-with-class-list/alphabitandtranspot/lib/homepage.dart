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
      debugPrint(select.names);
      switch (select.names) {
        case "Transport":
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => CatagoryDetailPage(
                      AllCatagory.transportdata, select.names)));
          break;
        case "Alphabit":
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => CatagoryDetailPage(
                      AllCatagory.alphabitdata, select.names)));
          break;

        case "Veg":
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      CatagoryDetailPage(AllCatagory.vegdata, select.names)));
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
                debugPrint("im rr");
                catagorysButton(indext);
              },
            );
          }),
    );
  }
}
