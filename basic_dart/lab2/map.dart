import 'dart:io';

void main() {
  print('Enter the name and grade of three students: ');

  Map<String, int> studentGrades = {
    stdin.readLineSync()!: int.parse(stdin.readLineSync()!),
    stdin.readLineSync()!: int.parse(stdin.readLineSync()!),
    stdin.readLineSync()!: int.parse(stdin.readLineSync()!)
  };
    // Adding a new entry
  studentGrades['Bob'] = 92;
    // Accessing values
  print('Jane\'s grade: ${studentGrades['Jane']}');
  // Looping through the map
  studentGrades.forEach((student, grade) {
    print('$student: $grade');
  });
}