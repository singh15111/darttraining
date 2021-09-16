import 'package:animalswithbirds/animalsname.dart';
import 'package:flutter/material.dart';

class AnimalsData {
 
  static final List<AnimalsName> animalsdata = [
    AnimalsName(
      Image(
          image: NetworkImage(
              "https://th.bing.com/th/id/OIP.DHUZYvuuAMjAv_-G5HabuQHaEo?pid=ImgDet&rs=1")),
      "tiger",
    ),
    AnimalsName(
      Image(
          image: NetworkImage(
              "https://th.bing.com/th/id/OIP.DHUZYvuuAMjAv_-G5HabuQHaEo?pid=ImgDet&rs=1")),
      "Cat",
    ),
    AnimalsName(
      Image(
          image: NetworkImage(
              "https://th.bing.com/th/id/OIP.DHUZYvuuAMjAv_-G5HabuQHaEo?pid=ImgDet&rs=1")),
      "Dog",
    ),
    AnimalsName(
      Image(
          image: NetworkImage(
              "https://th.bing.com/th/id/OIP.DHUZYvuuAMjAv_-G5HabuQHaEo?pid=ImgDet&rs=1")),
      "Elephent",
    ),
  ];
}
