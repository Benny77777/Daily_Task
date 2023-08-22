// ignore_for_file: unused_local_variable, avoid_print

import 'dart:io';

void main() {
  print('Welcome to the Simple Calculator');
  print('Enter the first number: ');
  int? num1 = int.parse(stdin.readLineSync()!);
  print('Enter the second number: ');
  int? num2 = int.parse(stdin.readLineSync()!);
  print('choose an operation');
  print('1. Addition\n 2. Subtraction\n 3. Multiplication\n 4. Division');
  print('Enter your choice(1-4):');
  int? option = int.parse(stdin.readLineSync()!);

  switch (option) {
    case 1:
      print(Addition(num1, num2));
      break;
    case 2:
      print(Subtraction(num1, num2));
      break;
    case 3:
      print(Multiplication(num1, num2));
      break;
    case 4:
      print(Division(num1, num2));
      break;
    default:
      print('Enter a valid option');
  }
}

int Addition(int a, int b) {
  return a + b;
}

int Subtraction(int a, int b) {
  return a - b;
}

double Division(int a, int b) {
  return a / b;
}

int Multiplication(int a, int b) {
  return a * b;
}
