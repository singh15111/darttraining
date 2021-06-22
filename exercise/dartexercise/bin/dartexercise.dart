void main(List<String> arguments) {
  int a = 45;

  int b = 40;

  double c = 0;

  bool result = false;

  print(a < b);

  print(a > b);

  print(c);

  print(a < b ? "hey,wie geht es dir" : "hey, DEPAK SIR APP KAISE HO");

  print(
      a > b ? "ganz gut danke und selest" : "mujhe umeed hain app thik ho ga");

  c = (a < b ? a : b).toDouble();

  print(c);

  c = (a > b ? a : b).toDouble();
  print(c);

  result = a < b;
  print(result);

  result = a > b;
  print(result);
}
