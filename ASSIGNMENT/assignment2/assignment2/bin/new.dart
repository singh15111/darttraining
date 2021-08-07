main(List<String> args) {
  List<int> n = [1, 3, 5, 7, 9, 2, 4, 6, 8];

  int sum = 0;
  for (int i = 0; i < 9; i++) {
    sum += n[i];
  }
  print(sum);
  for (int i = 1; i <= 5; i++) {
    for (int j = 0; j < i; j++) {
      print(i);
    }
  }
}
