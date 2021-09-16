import 'package:alphabitandtranspot/catagoryall.dart';
import 'package:flutter/material.dart';

class CatagoryDetailPage extends StatefulWidget {
  dynamic catagoryscreen;
  CatagoryDetailPage(this.catagoryscreen);

  @override
  _CatagoryDetailPageState createState() => _CatagoryDetailPageState();
}

class _CatagoryDetailPageState extends State<CatagoryDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: widget.catagoryscreen.length,
          itemBuilder: (BuildContext context, int indext) {
            dynamic catagoryname = widget.catagoryscreen[indext];
            return ListTile(
              title: Text(catagoryname.names),
              trailing: Icon(catagoryname.image),
              // onTap: () {
              //catagorysButton(indext);
              // },
            );
          }),
    );
  }
}
