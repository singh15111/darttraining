import 'package:flutter/cupertino.dart';
import 'package:listwithmap/transportdata.dart';
import 'package:listwithmap/vegdata.dart';

class AllCatagory {
  static final List<CatagoryData> allcatagory = [
    CatagoryData("Transport"),
    CatagoryData("Veg"),
  ];
  static final List<TransportData> transportdata = [
    TransportData(
      "bus",
      Image(
          image: NetworkImage(
              "https://th.bing.com/th/id/OIP.DHUZYvuuAMjAv_-G5HabuQHaEo?pid=ImgDet&rs=1")),
    ),
    TransportData(
      "Auto",
      Image(
          image: NetworkImage(
              "http://www.gilmyr.com/wp-content/themes/gilmyr/assets/images/facebook_share.png")),
    ),
    TransportData(
      "Car",
      Image(
          image: NetworkImage(
              "https://www.google.de/url?sa=i&url=https%3A%2F%2Fec.europa.eu%2Feurostat%2Fde%2Fweb%2Ftransport%2F&psig=AOvVaw0r60KBqMN4iZYiwDYCVTxy&ust=1632264596171000&source=images&cd=vfe&ved=0CAgQjRxqFwoTCICJ6c7RjvMCFQAAAAAdAAAAABAE")),
    ),
    TransportData(
        "Truck",
        Image(
            image: NetworkImage(
                "https://www.google.de/url?sa=i&url=https%3A%2F%2Fec.europa.eu%2Feurostat%2Fde%2Fweb%2Ftransport%2F&psig=AOvVaw0r60KBqMN4iZYiwDYCVTxy&ust=1632264596171000&source=images&cd=vfe&ved=0CAgQjRxqFwoTCICJ6c7RjvMCFQAAAAAdAAAAABAE"))),
  ];

  static final List<VegData> vegdata = [
    VegData(
        "Pizza",
        Image(
            image: NetworkImage(
                "https://www.google.de/url?sa=i&url=https%3A%2F%2Fec.europa.eu%2Feurostat%2Fde%2Fweb%2Ftransport%2F&psig=AOvVaw0r60KBqMN4iZYiwDYCVTxy&ust=1632264596171000&source=images&cd=vfe&ved=0CAgQjRxqFwoTCICJ6c7RjvMCFQAAAAAdAAAAABAE"))),
    VegData(
        "Nudel",
        Image(
            image: NetworkImage(
                "https://www.google.de/url?sa=i&url=https%3A%2F%2Fec.europa.eu%2Feurostat%2Fde%2Fweb%2Ftransport%2F&psig=AOvVaw0r60KBqMN4iZYiwDYCVTxy&ust=1632264596171000&source=images&cd=vfe&ved=0CAgQjRxqFwoTCICJ6c7RjvMCFQAAAAAdAAAAABAE"))),
    VegData(
        "Apple",
        Image(
            image: NetworkImage(
                "https://www.google.de/url?sa=i&url=https%3A%2F%2Fec.europa.eu%2Feurostat%2Fde%2Fweb%2Ftransport%2F&psig=AOvVaw0r60KBqMN4iZYiwDYCVTxy&ust=1632264596171000&source=images&cd=vfe&ved=0CAgQjRxqFwoTCICJ6c7RjvMCFQAAAAAdAAAAABAE"))),
  ];
}

class CatagoryData {
  String title;
  CatagoryData(this.title);
}
