main(List<String> args) {
  print(evenOdd(100) + leppiNot(24));

  // int a = evenOdd(100);
  //int b = leppiNot(24);
  //int c = a + b;
  int c = evenOdd(100) + leppiNot(24);
  print(c);
}

int leppiNot(int num) {
  if (num % 4 == 0) {
    return num + 10;
  } else {
    return num;
  }
}

int evenOdd(int nm) {
  if (nm % 2 == 0) {
    return nm;
  } else {
    return nm;
  }
}
