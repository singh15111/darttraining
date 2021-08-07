main(List<String> args) {
  List<int> ne = [
    2,
    3,
    4,
    5,
    6,
    7,
    9,
  ];
  /* int resu = 0;

  for (int i = 0; i <= 7; i++) {
    resu * ne[i];
    print(resu);
  }*/

  for (int i = 1; i <= 5; i++) {
    for (int j = 0; j < i; j++) {
      int c = i * j;
      print(c);
    }
  }
}
