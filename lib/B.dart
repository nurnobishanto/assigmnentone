// Define the Role interface
abstract class Role {
  void displayRole();
}

// Implement the Person class
class Person implements Role {
  String name;
  int age;
  String address;

  // Reference to the Role interface
  Role role;

  // Constructor
  Person(this.name, this.age, this.address, this.role);

  // Getter methods
  String get getName => name;
  int get getAge => age;
  String get getAddress => address;

  // Implementing the displayRole method from the Role interface
  @override
  void displayRole() {
    print('Role: ${role.runtimeType}');
  }

  // Print all data including the role
  void printData() {
    print('Name: $name');
    print('Age: $age');
    print('Address: $address');
    displayRole();
    print('\n');
  }
}

// Implement the Student class
class Student implements Role {
  @override
  void displayRole() {
    print('Student');
  }
}

// Implement the Teacher class
class Teacher implements Role {
  @override
  void displayRole() {
    print('Teacher');
  }
}

void main() {

  var teacherRole = Teacher();
  var studentRole = Student();

  var teacher = Person('Engr Nurnobi Hosen', 24, 'Mirpur 2, Dhaka', teacherRole);
  var student = Person('Mr. Shanto Nurnobi', 20, 'Melandah, Jamalpur', studentRole);

  teacher.printData();
  student.printData();

}
