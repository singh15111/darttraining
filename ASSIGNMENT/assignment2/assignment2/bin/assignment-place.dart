main(List<String> args) {
  String country = "Japan";

  String capital = "0";

  if (country == "India") {
    capital = "Delhi";
  } else if (country == "Deutschland") {
    capital = "Berlin";
  } else if (country == "Italy") {
    capital = "Rome";
  } else if (country == "Holland") {
    capital = "Amsterdam";
  } else if (country == "France") {
    capital = "Paris";
  } else if (country == "Japan") {
    capital = "Tokyo";
  }

  print(capital);

  switch (country) {
    case "India":
      capital = "Delhi";

      break;

    case "Italy":
      capital = "Rome";

      break;

    case "Deutschland":
      capital = "Berlin";

      break;

    case "Japan":
      capital = "Tokoyo";

      break;

    case "France":
      capital = "Paris";

      break;

    case "Holland":
      capital = "AMsterdam";

      break;
    default:
  }

  print(capital);
}
