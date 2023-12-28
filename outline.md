# Functions and control flow

## Functions
Using https://dart.dev/language/functions as source.

### Parameters
Recap of functions: We have already seen functions last week. Here are some examples:
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
Named parameters: Similar to Python we can call functions while naming their parameters. This is useful when a function has many parameters, makes it more readable and parameters can be passed in any order.
```dart
void main() {
    birthdayMessage(name: "Alice", ageLastYear: 20);
}

void birthdayMessage(String name, int ageLastYear) {
    print("Happy ${ageLastYear + 1}th birthday, $name!");
}
```
Default values for parameters: Similar to Python we can set default values for parameters. This way, when the caller does not pass a value for a parameter, the default value is used.
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
Note that the type of parameters can also be nullable (e.g., `String? name`), this way if no value is passed for a parameter, it will be `null`.

### `main` function and importing from other files
Reminder: This is the entry point of Dart programs, all Dart programs must have a `main` function that is called when the program starts. The `main` function could call other functions.
`main` function with arguments: When used for command-line programs, the `main` function can take arguments. We will visit lists in more details later, this is just a quick example:
```dart
void main(List<String> arguments) {
    String name = arguments[0];
    int age = int.parse(arguments[1]);

    birthdayMessage(name, age);
}
```
A project may have multiple Dart files. To use functions from other files, we need to import them. For example, if we have a file called `birthday.dart` that contains the `birthdayMessage` function, we can import it as follows in the `main.dart` file that has the `main` function:
```dart
import 'birthday.dart';

void main() {
    birthdayMessage("Alice", 20);
}
```
This would be the content of the `birthday.dart` file:
```dart
void birthdayMessage(String name, int ageLastYear) {
    print("Happy ${ageLastYear + 1}th birthday, $name!");
}
```


### Arrow functions
Arrow functions: Functions that are made up of expressions can be simplified using `=>` (the arrow notation). This shortcut cannot be used if the function’s body consists of statements (statements something but do not return a value, e.g., `double radius = 10;` whereas expressions have some value, e.g., `pow(radius, 2) * pi` has the value 314.159265359). Since `x * 2` is an expression in `timesTwo` function below, we can simplify it using the arrow notation:
```dart
int timesTwo(int x) {
    return x * 2;
}

int timesTwo(int x) => x * 2;

void main() {
    int result = timesTwo(2);
    print(result); // prints 4
}
```

### Higher-order functions
Higher-order functions: Functions are first-class objects can be saved to variables or passed to other functions as parameters. Higher-order functions are functions that accept other functions as parameters (or return them as outputs). 
As programmers, you will most likely use higher-order functions when processing collections of data (for example, lists or strings). Suppose we were to write a `timesFour` function that multiplies its input by 4. We could write it as follows:
```dart
int timesFour(int x) {
    return x * 4;
}

void main() {
    int result = timesFour(2);
    print(result); // prints 8
}
```
But also we could write a function `applyTwice` that applies a function twice to an input:
```dart
int applyTwice(int Function(int) f, int x) {
    int firstOutput = f(x);
    int secondOutput = f(firstOutput);
    return secondOutput;
}
```
Then we could call `applyTwice` with `timesTwo` as follows:
```dart
void main() {
    int result = applyTwice(timesTwo, 2);
    print(result); // prints 8
}
```
Also here is an example of assigning a function to a variable:
```dart
void main() {
    int Function(int) timesTwo = (int x) => x * 2;
    int result = timesTwo(2);
    print(result); // prints 4
}
```
Dart also has Lambda expressions, called anonymous functions in Dart. These are functions that do not have a name. They are useful when we want to pass a function as a parameter to another function, but we do not want to define a function separately. For example:
```dart
Function makeAdder(int x) {
  return (int y) => x + y; // Returns an anonymous function.
}

void main() {
    Function addTwo = makeAdder(2); // Or you can specify the type ...
    int Function(int) addTwo = makeAdder(2);

    print(addTwo(3)); // prints 5
}
```


## Conditionals

### Boolean expressions
Using https://dart.dev/language/operators and https://dart.dev/language/built-in-types#booleans as sources.

Equality and relational operators: These operators are used to compare values. Quickly recap operators: `==`, `!=`, `>`, `<`, `>=`, `<=` (these are same as Python). Also small note about `as`, `is`, `is!` operators. Some examples, we have seen similar things before:
```dart
void main() {
    print(1 == 1); // prints true
    print(1 != 1); // prints false
    print(1 >= 1); // prints true
    print(1 is int); // prints true because 1 is an int
    print(1 is! int); // prints false because 1 is an int
    print('1' as int); // prints 1 because '1' can be converted to an int
}
```
Logical operators: Quickly recap operators: `&&`, `||`, `!` (list their equivalent in Python for instance, `and`, `or`, `not`). Some examples, we have seen similar things before:
```dart
void main() {
    print(true && false); // prints false
    print(false && false); // prints false
    print(true || false); // prints true
    print(!true); // prints false
}
```

### Conditional statements
Using https://dart.dev/language/branches as source.
If(-else) statements: We have already seen this in Python. The syntax is similar except we surround the boolean expression with parentheses and we use curly braces to surround the code to be executed. This is a simple example:
```dart
void main() {
    String language = 'en';
    if (language == 'en') {
        print('Hello, world!');
    } else if (language == 'es') {
        print('Hola, mundo!');
    } else if (language == 'fr') {
        print('Bonjour, monde!');
    } else {
        print('Unknown language');
    }
```
Switch statements: These statements are used to execute code based on the value of a variable. They make the code more compact and readable. But you cannot use `if` statements inside `switch` statements (e.g., range checks). This is the same example as above using `switch`:
```dart
void main() {
  String language = 'en';
  switch (language) {
    case 'en':
      print('Hello, world!');
      break;
    case 'es':
      print('Hola, mundo!');
      break;
    case 'fr':
      print('Bonjour, monde!');
      break;
    default:
      print('Unknown language');
  }
}
```
Below is an example of how a function that takes an optional parameter can check for a null value using a switch statement:
```dart
double customLog(double x, {double? base}) {
    switch (base) {
        case null:
            return log(x);
        default:
            return log(x) / log(base);
    }
}
```

Dart has Exhaustiveness checking. This is a feature that reports a compile-time error if it’s possible for a value to enter a switch but not match any of the cases. Try for example:
```dart
import 'dart:io';

void main() {
    String input = stdin.readLineSync()!;
    bool? isTrue = bool.tryParse(input);
    switch (isTrue) {
        case true:
            print('It is true');
            break;
        case false:
            print('It is false');
            break;
    }
}
```
Note that `tryParse` returns `null` if the string cannot be parsed as the given type (here an `int`).

Exception handling: Similar to Python, we can use try-catch statements to handle exceptions. This is an example:
```dart
void main() {
    try {
        int result = 1 ~/ 0;
        print(result);
    } on IntegerDivisionByZeroException {
        print('Cannot divide by zero');
    } catch (e) {
        print('An unknown error occurred: $e');
    }
}
```
There is way more to exception handling (e.g., `throw` statement, `assert` statement, etc.) for more info: https://dart.dev/language/error-handling

## Loops
Using https://dart.dev/language/loops as source.
### For loops
For loops: We have already seen for loops in Python. The syntax is similar except place the initialization and increment statements in the parentheses and we use curly braces to surround the code to be executed. This is a simple example:
```dart
void main(){
    for (int i = 0; i < 5; i++) {
        print(i);
    }
}
```
In Python, this would be:
```python
for i in range(0, 5, 1):
    print(i)
```

We also have `for-in` loops, but we will see examples of this when we cover collections.
For more practice on for-in loops, we recommend this codelab: https://dart.dev/codelabs/iterables

### While loops
While and do-while loops: Again, we have already seen while loops in Python. The syntax is similar except we use curly braces to surround the code to be executed. This is a simple example (we are making the program that reads the user's number more robust by checking if the input is not `null`):
```dart
int getNumber() {
    while (true) {
        print('Enter a number:');
        String? input = stdin.readLineSync();
        int? number = int.tryParse(input!);
        if (number != null) {
            return number;
        } else {
            print('You did not enter a number');
        }
    }
}
```
Another example of getting a number that is either 5, 7 or 9:
```dart
int getSize() {
    int? size;
    while (size != 5 && size != 7 && size != 9) {
        print('Enter a size (5, 7 or 9):');
        String? input = stdin.readLineSync();
        size = int.tryParse(input!); // This will break if input is null
    }
    return size;
}
```
Similar to Python, we also have `break` and `continue` statements. Here is an updated version of the above example using `break`:
```dart
int getSize() {
    int? size;
    while (true) {
        print('Enter a size (5, 7 or 9):');
        String? input = stdin.readLineSync();
        size = int.tryParse(input!); // This will break if input is null
        if (size == 5 || size == 7 || size == 9) {
            break;
        }
    }
    return size;
}
```
And here is an example using `continue`:
```dart
void main() {
    for (int i = 0; i < 10; i++) {
        if (i % 2 == 0) {
            continue;
        }
        print(i);
    }
}
```