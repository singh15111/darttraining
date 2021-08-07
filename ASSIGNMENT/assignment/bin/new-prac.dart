main(List<String> args) {
  String ok = "supper";

  int hg = 50;

  int result = 0;

  switch (hg) {
    case 80:
      ok = "hey";
      break;

    case 70:
      ok = "hhey";
      break;

    case 60:
      ok = "ey";
      break;

    case 50:
      ok = "y";
      break;

    default:
  }

  print(ok);
}
