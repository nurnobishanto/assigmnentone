// Define the Role interface
abstract class Role {
  void displayRole();
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

// Implement the Teacher class extending Person
class Teacher extends Person {
  String teacherID;
  List<String> coursesTaught;

  // Constructor
  Teacher(String name, int age, String address, String teacherID, List<String> coursesTaught)
      : this.teacherID = teacherID,
        this.coursesTaught = coursesTaught,
        super(name, age, address, TeacherRole());

  // Override displayRole method
  @override
  void displayRole() {
    print('Role: Teacher');
  }

  // Method to display courses taught
  void displayCoursesTaught() {
    print('Courses Taught:');
    for (var course in coursesTaught) {
      print('- $course');
    }
  }
}

// Concrete implementation of Role for a Teacher
class TeacherRole implements Role {
  @override
  void displayRole() {
    print('Teacher');
  }
}

void main() {
  // Example usage
  var teacher = Teacher('Engrn Nurnobi Hosen', 24, 'Mirpur 2, Dhaka', 'T123', ['Mathematics', 'Physics', 'Chemistry']);

  teacher.printData();
  teacher.displayCoursesTaught();
}
