# Code from Week 16

A repository containing the examples from the worksheet and lecture.

## Contents

- `lect16.dart` - Code from the lecture.
- `pract16.dart` - Code from the worksheet.
- `main.dart` - A simple command-line program that prints the name and the age of the user passed to it as a command-line argument.
- `README.md` - This file.
- `.gitignore` - A file telling git to ignore certain files. You do not need to worry about this file for now.

## Running the code

Navigate to the directory containing the code with the `cd` command, for example:

```bash
cd ~/Documents/programming/week-16-dart-code
```

Then, run the code with the `dart` command, for example:

```bash
dart pract16.dart
```

Run the `main.dart` file with two command-line arguments, for example:

```bash
dart main.dart "Molly Millions" 21
```

Analyze the code with the `dart analyze` command, for example:

```bash
dart analyze pract16.dart
```

Fix the automatically detected issues with the `dart fix` command, for example:

```bash
dart fix pract16.dart
```
