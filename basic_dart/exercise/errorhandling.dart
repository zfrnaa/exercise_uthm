import 'dart:io';

void main() {
  int a;
  int b;

  while (true) {
    try {
      print('Enter the first number: ');
      a = int.parse(stdin.readLineSync()!);
      break;
    } catch (e) {
      print('Invalid input. Please enter a valid integer.');
    }
  }

  while (true) {
    try {
      print('Enter the second number: ');
      b = int.parse(stdin.readLineSync()!);
      break;
    } catch (e) {
      print('Invalid input. Please enter a valid integer.');
    }
  }

  try {
    double result = a / b;
    print(result);
  } catch (e) {
    print('Error: Division by zero');
  }
}