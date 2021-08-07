main(List<String> args) {
  int a = 19;

  int b = 18;

  int clu = 1;

  int result = 0;

  if (clu == 1) {
    result = a + b;
  } else if (clu == 2) {
    result = a - b;
  } else if (clu == 3) {
    result = a * b;
  } else if (clu == 4) {
    result = (a / b) as int;
  } else if (clu == 5) {
    result = a & b;
  }

  print(result);
}
