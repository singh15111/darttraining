main(List<String> args) {
  // 1
  String month = "jan";

  String resu = "0";

  if (month == "jan") {
    resu = "ur session start";
  } else {
    resu = "session end";
  }

  print(resu);

  String jau = month == "jan" ? "ur session start" : "session end";

  print(jau);

  // 2

  String weather = "winter";
  if (weather == "winter") {
    print("plz coffe");
  } else {
    print("plz juice");
  }

  String weat = weather == "winter" ? "plz coffe" : "plz juice";

  print(weat);

  // 3

  int Depeek = 15;
  int sarbjeet = 5;

  if (Depeek > sarbjeet) {
    print("Depeek is rich");
  } else if (Depeek <= sarbjeet) {
    print("both rich");
  } else if (Depeek < sarbjeet) {
    print("sarb is rich");
  }

  // 4

  int a = 10;
  int b = 15;
  int c = 17;
  int d = 6;
  int e = 9;

  int f = a + b + c + d + e;
  double resul = f / 5;

  print(resul);


}
