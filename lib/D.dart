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
  Teacher(String name, int age, String address, Role role, this.teacherID, this.coursesTaught)
      : super(name, age, address, role);

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

void main() {
  // Example usage
  var teacher = Teacher('Jane Smith', 35, '456 Oak St', Role(), 'T123', ['Mathematics', 'Physics', 'Chemistry']);

  teacher.printData();
  teacher.displayCoursesTaught();
}
