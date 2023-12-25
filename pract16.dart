void main() {
  print(calculateArea(side1: 5, side2: 10));
  print(calculateArea(side1: 5));
  celebrate(10, name: "Alice");
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

void celebrate(int age, {String name = "friend"}) {
  print("Happy $age" + "th birthday, $name!");
}
