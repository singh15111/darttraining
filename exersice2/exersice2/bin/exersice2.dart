void main(List<String> arguments) {
  print('Hello world!');

  int a = 70;

  int b = 60;

  double d = 50;

  print(a < b ? "hey" : "hi");

  print(a > b ? "hey" : "hi");

  print("condition operator");
  print(a < b && a < d);

  print(a > b && a > d);

  print(a > b && d > b);

  print(a > b || a > d);

  print(a < b || a < d);

  print(a > b || d > b);

  print("assignment operator");

  print(d = d + a);

  print(d += a);

  print(d += b);

  print(d -= a);

  print(d *= a);

  print(d /= a);

  print(d %= a);

  print("before decrement" + a.toString());

  --a;

  print("after decrement" + a.toString());

  a--;

  print("before increment" + d.toString());
  ++d;

  print("after increment" + d.toString());
  d++;

  print("condition statement");

  int user = 25;

  if (user == 22) {
    print("u can apply abc");
  } else {
    print("u cant apply");
  }

  print("condition statement 2");

  int singh = 20;

  if (singh == 19) {
    print("u can apply abc");
  } else {
    print("u cant apply");
  }
}
