import 'package:dartnclass/dartnclass.dart' as dartnclass;

import 'animals.dart';
import 'person.dart';

void main(List<String> arguments) {
  print('Hello world: ${dartnclass.calculate()}!');

  AnimalName dog = AnimalName();
  print(dog.aniage);
  print(dog.aniCountry);
  print(dog.animname);

  AnimalName cat = AnimalName();
  cat.aniage = 10;
  cat.aniCountry = "Deutschland";
  cat.animname = "cat";

  print(cat.aniCountry);
  print(cat.aniage);
  print(cat.animname);
  //print(cat.animname);
  Person people = Person();

 print( people.name);
 print (people.age);
 print( people.Country);
 print( people.city);
 
 




  Person Deepak = Person();
  Deepak.name = "Deepak Bajaj";
  Deepak.Country = "India";
  Deepak.city = "Delhi";


 print( Deepak.name);
 print (Deepak.age);
 print( Deepak.Country);
 print( Deepak.city);
 
  
}
