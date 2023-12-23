# Functions and control flow

## Functions

### Parameters
- Recap of functions: We have already seen functions last week. Here are some examples:
```dart
void main() {
    print('Hello, World!');
}
```
```dart
int getUserNumber() {
    String? input = stdin.readLineSync();
    int number = int.parse(input!);
    return number;
}
```
- Named parameters: Similar to Python we can call functions while naming their parameters. This is useful when a function has many parameters, makes it more readable and parameters can be passed in any order.
```dart
void main() {
    birthdayMessage(name: "Alice", ageLastYear: 20);
}

void birthdayMessage(String name, int ageLastYear) {
    print("Happy ${ageLastYear + 1}th birthday, $name!");
}
```
- Default values for parameters: Similar to Python we can set default values for parameters. This way, when the caller does not pass a value for a parameter, the default value is used.
```dart
import 'dart:math';

void main() {
    examReminder();
    examReminder("Alice");

    print(customLog(25));
    print(customLog(25, base: 10));
}

double customLog(double x, {double base = e}) {
    return log(x) / log(base);
}

void examReminder(String studentName = "student"){
    print("Dear $studentName, don't forget to study for your end of term exam!");
}
```
- Note that the type of parameters can also be nullable (e.g., `String? name`), this way if no value is passed for a parameter, it will be `null`.

### `main` function
- Reminder: This is the entry point of Dart programs, all Dart programs must have a `main` function that is called when the program starts. The `main` function could call other functions.
- `main` function with arguments: When used for command-line programs, the `main` function can take arguments. We will visit lists in more details later, this is just a quick example:
```dart
void main(List<String> arguments) {
    String name = arguments[0];
    int age = int.parse(arguments[1]);

    birthdayMessage(name, age);
}
```

- Arrow functions: This is a compact way of writing (typically short) functions.
- Higher-order functions: Functions are first-class objects can be saved to variables or passed to other functions as parameters. This concept enables us to write more powerful programs.
- Using https://dart.dev/language/functions as source. Although most advanced topics in this page are not covered in our module, you can read them if you are interested.

## Conditionals

- Boolean expressions
    - Equality and relational operators: These operators are used to compare values.
    - Logical operators: These operators are used to combine boolean expressions.
    - Using https://dart.dev/language/operators and https://dart.dev/language/built-in-types#booleans as sources.

- Conditional statements
    - If statements: These statements are used to execute code based on a boolean expression.
    - If-else statements: These statements are used to execute code based on a boolean expression, but also execute code if the boolean expression is false.
    - If-case statements: These statements are used to execute code based on a boolean expression, but also execute code if the boolean expression is false. They are similar to if-else statements, but are more compact.
    - Switch statements and switch expressions: These statements are used to execute code based on the value of a variable.
    - Advanced: Exhaustiveness checking and guard clauses: These are advanced features of switch statements and switch expressions.
    - Using https://dart.dev/language/branches as source.
    - And example of named/optional parameters with conditional statements (e.g., )

## Loops
- For loops: These loops are used to execute code a fixed number of times.
- While and do-while loops: These loops are used to execute code while a boolean expression is true.
- Break and continue: These statements are used to control the flow of loops.
- Using https://dart.dev/language/loops as source.