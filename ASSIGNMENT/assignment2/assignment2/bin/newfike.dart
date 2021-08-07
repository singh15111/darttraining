import 'functionindart/simple_fun.dart';

main(List<String> args) {
  String month = "janu";
  String resu = "0";

  printList(month);
  printAdd(month);
  print(checkEvenOdd(51));

  if (month == "janu") {
    resu = "session  st";
  } else {
    resu = "end";
  }
  print(resu);

  String mo = month == "janu" ? "sessin st" : "session en";
  print(mo);

// void prinTTT(String){
// print()}
}

void printList(String month) {
  String resu = "0";
  if (month == "janu") {
    resu = " sis start";
  } else {
    resu = "not sta";
  }
  print(resu);
}

void printAdd(String month) {
  print(month == "janu" ? "sis st" : "not ss");
}

int checkEvenOdd(int num) {
  if (num % 2 == 0) {
    return num + 10;
  } else {
    return num + 30;
  }
}
