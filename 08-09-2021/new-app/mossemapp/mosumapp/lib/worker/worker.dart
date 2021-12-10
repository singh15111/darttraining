import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Worker {
  String location;

  Worker({required this.location}) {
    location = this.location;
  }
  late String temp;
  late String humidity;
  late String air_speed;
  late String description;
  late String main;

  Future<void> getData() async {
    Response response = await get(Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$location&appid=2695a9d6f9bdfe38f3a65e1cdd5575cf'));
    Map data = jsonDecode(response.body);

    /// tem and humidity
    Map temp_data = data['main'];

    double getTemp = temp_data['temp'];
    double getHumidity = temp_data['humidity'];

    //// air speed
    Map wind = data['wind'];
    double getAir_speed = wind['speed'];

    /// desscription
    List weather_data = data['weather'];
    Map weather_main_data = weather_data[0];
    String getMain_des = weather_main_data['main'];
    String getDes = weather_main_data['description'];

    /// aasing value

    temp = getTemp.toString();
    humidity = getHumidity.toString();
    air_speed = getAir_speed.toString();
    description = getDes;
    main = getMain_des;
  }
}
