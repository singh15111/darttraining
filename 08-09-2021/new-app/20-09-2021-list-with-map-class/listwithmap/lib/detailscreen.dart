import 'package:flutter/material.dart';
import 'package:listwithmap/allcatagorydata.dart';

class DetailScreen extends StatelessWidget {
  dynamic allCatagoryScreen;
  String titlename;
  DetailScreen(this.allCatagoryScreen, this.titlename);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('$titlename'),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: 250,
            child: allCatagoryScreen.image,
          ),
          Container(
            child: Text(allCatagoryScreen.tit),
            height: 50,
            width: 100,
          ),
          Column(
            children: [
              Container(
                height: 200,
                width: 250,
                child: allCatagoryScreen.image,
              ),
              Container(
                child: Text(allCatagoryScreen.tit),
                height: 50,
                width: 100,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
