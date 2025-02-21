class StudentInfo {
  String _name;
  double _gpa;

  // Constructor
  StudentInfo(this._name, this._gpa);

  // Method to display student information
  void displayInfo() {
    print('Name: $_name');
    print('GPA: $_gpa');
  }

  // Getter for name
  String get name => _name;

  // Getter for GPA
  double get gpa => _gpa;

  // Setter for GPA with validation
  set gpa(double newGpa) {
    if (newGpa >= 0 && newGpa <= 4.0) {
      _gpa = newGpa;
    } else {
      print('Invalid GPA. Must be between 0 and 4.0');
    }
  }
}

void main() {
  // Create a student
  var student = StudentInfo('Zafran', 3.59);

  // Display initial information
  student.displayInfo();

  // Use getter to access GPA
  print('Current GPA: ${student.gpa}');

  // Use setter to update GPA
  student.gpa = 3.7;

  // Display updated information
  student.displayInfo();
}