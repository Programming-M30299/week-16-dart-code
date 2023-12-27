void main() {
  // examReminder("Alice", 14);
  // examReminder(name: "Alice", date: 14);
  // examReminder(date: 14, name: "Alice");
  // examReminder(date: 14);

  // formatAndPrint(timesTwo, "Hello");
  formatAndPrint(loudify, "Hello");
}

// void examReminder(String name, int date) {
//   print("Dear $name,\n"
//       "Don't forget your exam on the ${date}th!");
// }

void examReminder({String name = "student", required int date}) {
  print("Dear $name,\n"
      "Don't forget your exam on the ${date}th!");
}

// void examReminder({
//   String? name,
//   required int date
// }) {
//   print("Dear ${name ?? 'student'},\n"
//       "Don't forget your exam on the ${date}th!");
// }

int timesTwo(int x) => x * 2;

String loudify(String text) => '${text.toUpperCase()}!!!';

// void formatAndPrint(
//   String Function(String) formatFunction, 
//   String text
// ) {
//   String formattedText = formatFunction(text);
//   print(formattedText);
// }

void formatAndPrint(
  Function formatFunction, 
  String text
) {
  String formattedText = formatFunction(text);
  print(formattedText);
}