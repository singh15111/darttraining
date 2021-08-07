main(List<String> args) {
  printList();

  printName();
}

void printList() {
  List<String> name = [
    "singh",
    "sandhu",
    "sarbjeet",
  ];

  for (int i = 0; i < 3; i++) {
    print(name[i]);
  }
}

void printName() {
  int a = 10;

  int b = 20;

  int c = 0;

  c = a + b;
  print(c);
}
