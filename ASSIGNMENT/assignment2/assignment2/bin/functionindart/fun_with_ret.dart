import 'simple_fun.dart';

main(List<String> args) {
  familyName("Germany", "sandhu");

  print(printName(100, 150));
}

/*void familyName() {
  String fnam = "singh";
  String lnam = "sandhu";

  String fullname = fnam + lnam;

  print(fullname);
}*/

String familyName(String firstname, String lastname) {
  String fullname = firstname + lastname;
  return fullname;
}

int printName(int a, int b) {
  int c = 0;

  c = a + b;

  return c;
}


