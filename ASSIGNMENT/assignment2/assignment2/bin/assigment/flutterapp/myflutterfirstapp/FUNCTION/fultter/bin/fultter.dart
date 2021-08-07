void main(List<String> arguments) {
  print('Hello world!');

  print(Functio(a: 10,b: 10,));
  print(Functio());

  print(Functio());

  print(Functio());
}

Functio({
  int a=0,
  int b =0,
}) {
  int c = a + b;

  return c;
}
