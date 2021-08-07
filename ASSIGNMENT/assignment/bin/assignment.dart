void main(List<String> arguments) {
  print('Hello world!');

  print("CLU; ASSIGNMENT 1");

  int a = 10;
  int b = 20;

  int clu = 2;

  int result = 0;
  if (clu == 1) {
    result = a + b;
  } else if (clu == 2) {
    result = a - b;
  } else if (clu == 3) {
    result = a * b;
  } else if (clu == 5) {
    result = a % b;
  }

  print(result);

  print("CLU; ASSIGNMENT 2");

  result = 80;

  if (result >= 90) {
    print("exlent");
  } else if (result < 90) {
    print("A++");
  } else if (result < 80) {
    print("A+");
  } else if (result > 70) {
    print("A");
  } else if (result < 60) {
    print("b");
  } else if (result < 50) {
    print("fall");
  }

  print("CLU; ASSIGNMENT 2 B");

  int esult = 50;

  if (esult == 90) {
    print("exlent");
  } else if (esult == 90) {
    print("A++");
  } else if (esult == 80) {
    print("A+");
  } else if (esult == 70) {
    print("A");
  } else if (esult == 60) {
    print("b");
  } else if (esult == 50) {
    print("fall");
  }

  print("ASSIGNMENT 3");

  int c = 80;

  int d = 70;

  int e = 90;

  if (c > d) {
    print("a is greater than b");
  } else if (d < e) {
    print("e greater than d");
  } else if (c < d) {
    print("d greater than c");
  }

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

    case 4:
      result = (a / b) as int;

      break;

    case 5:
      result = a % b;

      break;
    default:
      result = 0;

      break;
  }

  print(result);

  int res1 = 70;
  String studresu = "pass";
  switch (res1) {
    case 90:
      studresu = "pass";

      break;

    case 80:
      studresu = "ok";

      break;

    case 70:
      studresu = "not ok";

      break;

    case 60:
      studresu = "fall";

      break;

    default:
  }

  print(studresu);
  print(res1);
}
