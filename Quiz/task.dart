// Student Result Management System 
 
// Create a simple student result system using class and encapsulation.

// Requirements:
// 1.	Create a class named Student and make the properties private:
// 2.	Create:
// o	A constructor to initialize.
// o	Getter methods to access fields.
// o	A method calculateGrade() that:
// 	Returns "A" if marks ≥ 80
// 	Returns "B" if marks ≥ 60
// 	Returns "C" otherwise


void main() {
  Student student1 = Student("Taha", 85);
  Student student2 = Student("Ali Umair", 72);
  Student student3 = Student("Rumman", 55);
  print("Student 1: ${student1.name}, Marks: ${student1.marks}, Grade: ${student1.calculateGrade()}");
  print("Student 2: ${student2.name}, Marks: ${student2.marks}, Grade: ${student2.calculateGrade()}");
  print("Student 3: ${student3.name}, Marks: ${student3.marks}, Grade: ${student3.calculateGrade()}");
}

class Student {
  final String _name;
  final double _marks;
  Student(this._name, this._marks);
  String get name => _name;
  double get marks => _marks;
  String calculateGrade() {
    if (_marks >= 80) {
      return "A";
    } else if (_marks >= 60) {
      return "B";
    } else {
      return "C";
    }
  }
}