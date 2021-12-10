import 'package:flutter/material.dart';

class CatagoryDetailPage extends StatefulWidget {
  List<dynamic> catagoryscreen;
  String titlename;
  CatagoryDetailPage(this.catagoryscreen, this.titlename);

  @override
  _CatagoryDetailPageState createState() => _CatagoryDetailPageState();
}

class _CatagoryDetailPageState extends State<CatagoryDetailPage> {
  void selectItem(){
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text(widget.titlename),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: widget.catagoryscreen.length,
          itemBuilder: (BuildContext context, int indext) {
            dynamic catagoryname = widget.catagoryscreen[indext];
            return ListTile(
              title: Text(catagoryname.title),
              trailing: catagoryname.image,
              onTap: () {
                //catagorysButton(indext);
              },
            );
          }),
    );
  }
}
