import 'package:alphabitandtranspot/alphabitdata.dart';
import 'package:alphabitandtranspot/transportdata.dart';
import 'package:alphabitandtranspot/veg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllCatagory {
  static final List<CatagorysName> allcatagory = [
    CatagorysName("Transport"),
    CatagorysName("Alphabit"),
    CatagorysName("Veg"),
  ];

  static final List<TransportData> transportdata = [
    TransportData("Bus", Icon(Icons.access_alarms_sharp)),
    TransportData("Car", Icon(Icons.access_alarms_sharp)),
    TransportData("Truck", Icon(Icons.access_alarms_sharp)),
    TransportData("Train", Icon(Icons.access_alarms_sharp)),
  ];
  static final List<AlphabitData> alphabitdata = [
    AlphabitData("A", Icon(Icons.access_alarms_sharp)),
    AlphabitData("B", Icon(Icons.access_alarms_sharp)),
    AlphabitData("C", Icon(Icons.access_alarms_sharp)),
    AlphabitData("D", Icon(Icons.access_alarms_sharp)),
  ];
  static final List<VegData> vegdata = [
    VegData("APPEL", Icon(Icons.access_alarms_sharp)),
    VegData("BANANA", Icon(Icons.access_alarms_sharp)),
    VegData("ANANAS", Icon(Icons.access_alarms_sharp)),
    VegData("KIRCHE", Icon(Icons.access_alarms_sharp)),
  ];
}

class CatagorysName {
  String names;
  CatagorysName(this.names);
}
