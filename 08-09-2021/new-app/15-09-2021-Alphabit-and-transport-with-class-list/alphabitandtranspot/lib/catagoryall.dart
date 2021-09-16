import 'package:alphabitandtranspot/alphabitdata.dart';
import 'package:alphabitandtranspot/transportdata.dart';

class AllCatagory {
  static final List<CatagorysName> allcatagory = [
    CatagorysName("Transport"),
    CatagorysName("Alphabit"),
  ];

  static final List<TransportData> transportdata = [
    TransportData("name", "image"),
  ];
  static final List<AlphabitData> alphabitdata = [
    AlphabitData("name", "image"),
  ];
}

class CatagorysName {
  String names;
  CatagorysName(this.names);
}
