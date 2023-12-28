import 'dart:math';

void main() {
  // print(calculateArea(side1: 5, side2: 10));
  // print(calculateArea(side1: 5));

  // int Function(int) multiplyBy2 = (int x) => x * 2;
  // int Function(int) multiplyBy2 = makeMultiplier(2);
  // int number = 5;
  // int result = applyTwice(multiplyBy2, number);
  // print(result); // 20
}

void calculateAge(String name, int birthYear) {
  int currentYear = DateTime.now().year;
  int age = currentYear - birthYear;

  print("Hello, $name! You are $age years old.");
}

// int calculateArea(int side1, int side2) {
//   return side1 * side2;
// }

// int calculateArea({required int side1, int side2 = 1}) {
//   return side1 * side2;
// }

// int calculateArea({required int side1, int? side2}) {
//   return side1 * (side2 ?? 1);
// }

int calculateArea(int side1, {int side2 = 1}) => side1 * side2;

// This function is imported in `main.dart`.
void birthdayMessage(String name, int age) {
  print("Happy birthday, $name! You are $age years old!");
}

double calculateCircleArea(double radius) {
  return pi * pow(radius, 2);
}

// int multiplyBy2(int x) => x * 2;

int applyTwice(int Function(int) operation, int number) {
  int firstStep = operation(number);
  int secondStep = operation(firstStep);
  return secondStep;
}

int Function(int) makeMultiplier(int x) {
  return (int y) => x * y;
}

void multiLingualGreeting(String language) {
  // if (language == 'en') {
  //   print('Hello, world!');
  //   print('You selected English.');
  // } else if (language == 'es') {
  //   print('Hola, mundo!');
  //   print('Has seleccionado Español.');
  // } else if (language == 'fr') {
  //   print('Bonjour, monde!');
  //   print('Vous avez sélectionné le Français.');
  // } else {
  //   print('Unknown language');
  //   print('Please select a valid language.');
  // }

  switch (language) {
    case 'en-gb' || 'en-us':
      print('Hello, world!');
      print('You selected English.');
      break;
    case 'es':
      print('Hola, mundo!');
      print('Has seleccionado Español.');
      break;
    case 'fr':
      print('Bonjour, monde!');
      print('Vous avez sélectionné le Français.');
      break;
    default:
      print('Unknown language');
      print('Please select a valid language.');
  }
}
