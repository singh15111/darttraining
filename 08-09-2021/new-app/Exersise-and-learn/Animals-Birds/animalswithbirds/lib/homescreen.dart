import 'package:animalswithbirds/animals.dart';
import 'package:animalswithbirds/animalsname.dart';
import 'package:animalswithbirds/birdsdata.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  dynamic birdsScreen;

  HomeScreen(this.birdsScreen);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: birdsScreen.image,
      ),
    );
  }
}
