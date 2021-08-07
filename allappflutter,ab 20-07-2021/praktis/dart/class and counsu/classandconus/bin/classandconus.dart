import 'package:classandconus/classandconus.dart' as classandconus;

void main(List<String> arguments) {
  print('Hello world: ${classandconus.calculate()}!');

  var study = Class1();
  var study2 = Class2();
  study.student();
  print(study.name);

  study2.name2 = "singh";

  study2.student2();

  var study3 = Class2();
  study3.name2 = "hey";

  study3.student2();
}

class Class1 {
  String name = "Sidhu";

  student() {
    print("object");
  }
}

class Class2 {
  var name2;
  student2() {
    print("object" + name2);
  }
}
