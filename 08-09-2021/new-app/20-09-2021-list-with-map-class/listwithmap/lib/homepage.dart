import 'package:flutter/material.dart';
import 'package:listwithmap/allcatagorydata.dart';
import 'package:listwithmap/listscreen.dart';

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
  void catagoryButton(int index) {
    setState(() {
      select = data[index];
      debugPrint(select.title);
      switch (select.title) {
        case "Transport":
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ListScreen(
                        AllCatagory.transportdata,
                      )));

          break;

        case "Veg":
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ListScreen(AllCatagory.vegdata)));

          break;
        default:
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List , Class , Map, Data"),
          centerTitle: true,
        ),
        body:
            Center(
        child: ListView.builder(
            itemCount: AllCatagory.allcatagory.length,
            itemBuilder: (BuildContext context, int index) {
              CatagoryData catagorydata = AllCatagory.allcatagory[index];
              return ListTile(
                title: Text(catagorydata.title),
                onTap: () {
                  catagoryButton(index);
                },
              );
            }),
      ),
          /*  Center(
            
          child: ListView(
            children: [
              
              ...AllCatagory.allcatagory.map((e) => ListTile(
                
                    title: Text(e.title),onTap: (){
                      
                      catagoryButton(index)
                    },
                  ),
                  
                  
                  ).toList(),
            ],
          ),
        ),*/
        );
  }
}
