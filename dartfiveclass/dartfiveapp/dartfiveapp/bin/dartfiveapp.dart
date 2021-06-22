void main(List<String> arguments) {
  int a = 15;
  int b = 10;
  double c = 0;
  bool result = false;
  c = (a + b).toDouble();

  print(c);
  c = (a - b).toDouble();

  print(c);
  c = (a * b).toDouble();

  print(c);
  c = (a / b);

  print(c);
  c = (a % b).toDouble();

  print(c);
  result = a < b;
  print(result);
  result = a > b;
  print(result);

  result = a <= b;
  print(result);

  result = a >= b;
  print(result);

  result = a != b;
  print(result);

  result = a == b;
  print(result);

  c = (a > b ? a : b).toDouble();

  print(c);

  print(a < b ? "sandhu" : "BAjaj sir");
}
