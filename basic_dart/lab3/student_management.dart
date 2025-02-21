import 'dart:io';

class Student {
  String _name;
  int _age;
  List<int> _grades = [];

  Student(this._name, this._age);

  String get name => _name;
  set name(String newName) => _name = newName;

  int get age => _age;
  set age(int newAge) => _age = newAge;

  List<int> get grades => _grades;

  void addGrade(int grade) {
    _grades.add(grade);
  }

  double calculateAverageGrade() {
    if (_grades.isEmpty) {
      return 0.0;
    }
    return _grades.reduce((sum, element) => sum + element) / _grades.length;
  }

  void displayDetails() {
    print('Name: $_name');
    print('Age: $_age');
    print('Average Grade: ${calculateAverageGrade()}');
  }
}

void main() {
  List<Student> students = [];

  while (true) {
    print('Enter student\'s name (or "quit" to exit):');
    String name = stdin.readLineSync()!;
    if (name.toLowerCase() == 'quit') {
      break;
    }

    print('Enter student\'s age:');
    int age = int.parse(stdin.readLineSync()!);

    Student student = Student(name, age);
    students.add(student);

    print('Enter grades for $name (separated by commas):');
    String gradesInput = stdin.readLineSync()!;
    List<int> grades = gradesInput.split(',').map(int.parse).toList();
    student.grades.addAll(grades);

    print('\nStudent added successfully!\n');
  }

  print('Student Details:');
  for (var student in students) {
    student.displayDetails();
    print('');
  }
}