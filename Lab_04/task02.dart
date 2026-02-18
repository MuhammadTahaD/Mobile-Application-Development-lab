import 'dart:io';

void main() {
  try {
    stdout.write("Enter your age: ");
    String? input = stdin.readLineSync();

    if (input == null || input.isEmpty) {
      print("Invalid input. Please enter a valid age.");
      return;
    }

    int age = int.parse(input);

    if (age < 0) {
      print("Age cannot be negative.");
      return;
    }

    if (age >= 100) {
      print("You are already 100 or older.");
      return;
    }

    int yearsLeft = 100 - age;
    print("You have $yearsLeft years left until you turn 100.");
  } catch (e) {
    print("Invalid input. Please enter a valid number.");
  }
}
