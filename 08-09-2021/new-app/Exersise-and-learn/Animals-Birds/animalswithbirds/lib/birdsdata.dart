import 'package:animalswithbirds/birds.dart';
import 'package:flutter/material.dart';

class BirdsData {
  static final List<BirdsName> brdsdata = [
    BirdsName(
        Image(
          image: NetworkImage(
              "https://th.bing.com/th/id/OIP.DTTd23ga6j4gU_m3OdrmfQHaJQ?pid=ImgDet&rs=1"),
        ),
        "owl"),
    BirdsName(
        Image(
          image: NetworkImage(
              "http://images.unsplash.com/photo-1544923408-75c5cef46f14?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwxMjA3fDB8MXxzZWFyY2h8MXx8cGFycm90fHwwfHx8&ixlib=rb-1.2.1&q=80&w=1080"),
        ),
        "Eagel"),
    BirdsName(
        Image(
          image: NetworkImage(
              "https%3A%2F%2Fstatic.dw.com%2Fimage%2F18372292_303.jpg"),
        ),
        "Parrot"),
  ];
}

class BirdsName {
  Image image;
  String title;

  BirdsName(this.image, this.title);
}
