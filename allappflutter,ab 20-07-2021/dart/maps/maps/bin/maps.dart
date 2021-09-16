void main(List<String> arguments) {
  print('Hello world!');

  Map fruites = Map<String, String>();
  fruites.putIfAbsent("one", () => "Apple");
  fruites.putIfAbsent("one", () => "Apple");
  fruites.putIfAbsent("Two", () => "Banana");
  fruites.putIfAbsent("Three", () => "PineApple");
  fruites.putIfAbsent("Four", () => "Mango");
  fruites.putIfAbsent("Five", () => "Orange");
  fruites.putIfAbsent("Six", () => "Grapes");
  fruites.putIfAbsent("Seven", () => "Papaya");
  fruites.keys.forEach((element) {
    print(element);
  });
  fruites.values.forEach((element) {
    print(element);
  });
  fruites.entries.forEach((element) {
    print('Key:${element.key},Value:${element.value}');
  });

  List persons = [
    {
      "person": {
        "fName": "SArbjeet",
        "Lname": "Sidhu",
        "age": 19,
      }
    },
    {
      "person": {
        "fName": "SArbjeet",
        "Lname": "Sidhu",
        "age": 19,
      }
    },
    {
      "person": {
        "fName": "SArbjeet",
        "Lname": "Sidhu",
        "age": 19,
      }
    },
    {
      "person": {
        "fName": "SArbjeet",
        "Lname": "Sidhu",
        "age": 19,
      }
    }
  ];
  for (var i = 0; i < persons.length; i++) {
    print(
        '${persons[i]['person']['fName']},${persons[i]['Lname']},${persons[i]['age']},');
  }
}
