import 'pract16.dart';

/* 
This program prints a birthday message for a given user.
It takes two command line arguments: the user's name and age.

Run this program with the following command:
```
dart main.dart "John Doe" 21
```
 */
void main(List<String> arguments) {
  String name = arguments[0];
  int age = int.parse(arguments[1]);
  birthdayMessage(name, age);
}
