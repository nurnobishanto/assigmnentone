// Define the Role interface
abstract class Role {
  void displayRole();
}

// Concrete implementation of Role for a Student
class StudentRole implements Role {
  @override
  void displayRole() {
    print('Student');
  }
}

// Implement the Person class
class Person implements Role {
  String name;
  int age;
  String address;
  Role role;

  Person(this.name, this.age, this.address, this.role);

  String get getName => name;
  int get getAge => age;
  String get getAddress => address;

  @override
  void displayRole() {
    role.displayRole();
  }

  void printData() {
    print('Name: $name');
    print('Age: $age');
    print('Address: $address');
    displayRole();
    print('\n');
  }
}

// Implement the Student class extending Person
class Student extends Person {
  String studentID;
  String course;
  List<double> courseScores;

  // Constructor
  Student(String name, int age, String address, Role role, this.studentID, this.course, this.courseScores)
      : super(name, age, address, role);

  double calculateAverageScore() {
    if (courseScores.isEmpty) {
      return 0.0;
    }

    double totalScore = courseScores.reduce((a, b) => a + b);
    return totalScore / courseScores.length;
  }
}

void main() {
  // Example usage
  var studentRole = StudentRole();
  var student = Student('Nurnobi Shanto', 20, 'Melandah, Jamalpur', studentRole, '2023001', 'Flutter', [100, 90, 90,90,100]);

  student.printData();
  print('Student ID: ${student.studentID}');
  print('Course: ${student.course}');
  print('Average Score: ${student.calculateAverageScore()}');

}
