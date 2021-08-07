import 'simple_fun.dart';

main(List<String> args) {
  familyName("Germany", "sandhu");

  printName(100, 150);
}

/*void familyName() {
  String fnam = "singh";
  String lnam = "sandhu";

  String fullname = fnam + lnam;

  print(fullname);
}*/

void familyName(String firstname, String lastname) {
  String fullname = firstname + lastname;

  print(fullname);
}

void printName(int a, int b) {
  int c = 0;

  c = a + b;
  print(c);
}
