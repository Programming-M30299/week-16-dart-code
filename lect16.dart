import 'dart:io';

void main() {
  // examReminder("Alice", 14);
  // examReminder(name: "Alice", date: 14);
  // examReminder(date: 14, name: "Alice");
  // examReminder(date: 14);

  // String Function(String) loudify =
  //   (String text) => '${text.toUpperCase()}!!!';

  // formatAndPrint(loudify, "Hello");

  // int Function(int) twoAdder = makeAdder(2);
  // print(twoAdder(5)); // 7

  int number = getNumber();
  print("The number is $number");
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

int multiplyBy2(int x) => x * 2;

// String loudify(String text) {
//   return '${text.toUpperCase()}!!!';
// }

void formatAndPrint(String Function(String) formatFunction, String text) {
  String formattedText = formatFunction(text);
  print(formattedText);
}

// void formatAndPrint(
//   Function formatFunction,
//   String text
// ) {
//   String formattedText = formatFunction(text);
//   print(formattedText);
// }

// Function makeAdder(int x) {
//   return (int y) => x + y;
// }

int Function(int) makeAdder(int x) {
  return (int y) => x + y;
}

void checkNumber(int number) {
  if (number > 0) {
    print("The number is positive.");
  } else if (number < 0) {
    print("The number is negative.");
  } else {
    print("The number is zero.");
  }
}

void gradeStudent(int score) {
  switch (score) {
    case 10:
      print('A');
      break;
    case 9:
    case 8:
      print('B');
      break;
    case 7 || 6:
      print('C');
      break;
    case 5 || 4 || 3:
      print('D');
      break;
    default:
      print('F');
  }
}

String boolToString(bool? value) {
  switch (value) {
    case true:
      return 'yes';
    case false:
      return 'no';
    // Without the default case, the analyzer would complain
    // that the switch statement doesn't cover all cases
    default:
      return 'unknown';
  }
}

int getNumber() {
  while (true) {
    print('Enter a number:');
    String? input = stdin.readLineSync();
    if (input == null) {
      print('Nothing was entered.');
      continue;
    }
    int? number = int.tryParse(input);
    if (number == null) {
      print('Not a number.');
      continue;
    }
    return number; // We could also use break here
  }
}
