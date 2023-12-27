import 'dart:math';

void main() {
  // print(calculateArea(side1: 5, side2: 10));
  // print(calculateArea(side1: 5));

  // int Function(int) multiplyBy2 = (int x) => x * 2;
  int Function(int) multiplyBy2 = makeMultiplier(2);
  int number = 5;
  int result = applyTwice(multiplyBy2, number);
  print(result); // 20
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
