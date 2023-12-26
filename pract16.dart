void main() {
  // print(calculateArea(side1: 5, side2: 10));
  // print(calculateArea(side1: 5));
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

int calculateArea({required int side1, int? side2}) {
  return side1 * (side2 ?? 1);
}

// This function is imported in `main.dart`.
void birthdayMessage(String name, int age) {
  print("Happy birthday, $name! You are $age years old!");
}
