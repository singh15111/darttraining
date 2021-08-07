main(List<String> args) {
  int a = 10;

  int b = 15;

  int c = 0;

  int result = 0;

  if (a > b) {
    if (a > c) {
      print("A is Greater${a}");
    } else {
      print("C is Greater ${c}");
    }
  } else {
    if (b > c) {
      print("B is Greater${b}");
    } else {
      print("C is Greater ${c}");
    }
  }

  if (a > b && a > c) {
    print("A is Greater ${a}");
  } else if (b > c && b > a) {
    print("B is Greater ${b}");
  } else {
    print("C is Greater ${c}");
  }
  print(a);

  print(b);
  a = a + b;
  b = a - b;
  a = a - b;
  print(a);

  print(b);

  for (int a = 1; a <= 20; a++) {
    for (int j = 0; j < 5; j++) {
      print(a);
    }
  }
}
