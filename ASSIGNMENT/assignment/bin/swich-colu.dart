main(List<String> args) {
  int a = 89;

  int b = 98;

  int clu = 5;

  int result = 0;

  switch (clu) {
    case 1:
      result = a + b;
      break;

    case 2:
      result = a - b;
      break;

    case 3:
      result = a * b;
      break;

    /*case 4:
      result = (a / b) as double;
      break;*/

    case 5:
      result = a % b;
      break;
    default:
  }
  print(result);
}
