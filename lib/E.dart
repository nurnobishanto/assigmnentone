// Define an interface for role-based behavior
abstract class Role {
  void displayRole();
}

class Person implements Role {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  @override
  void displayRole() {
    print('Role: Person');
  }
}

class Student extends Person {
  int studentID;
  List<double> courseScores = [];

  Student(String name, int age, String address, this.studentID) : super(name, age, address);

  void addCourseScore(double score) {
    courseScores.add(score);
  }

  double calculateAverageScore() {
    if (courseScores.isEmpty) {
      return 0.0;
    }

    double sum = courseScores.reduce((value, element) => value + element);
    return sum / courseScores.length;
  }

  @override
  void displayRole() {
    print('Role: Student');
  }

  void displayStudentInfo() {
    print('Student Information:');
    displayRole();
    print('Name: $name');
    print('Age: $age');
    print('Address: $address');
    print('Average Score: ${calculateAverageScore()}');
    print('\n');
  }
}

class Teacher extends Person {
  List<String> coursesTaught = [];

  Teacher(String name, int age, String address) : super(name, age, address);

  void addCourse(String course) {
    coursesTaught.add(course);
  }

  @override
  void displayRole() {
    print('Role: Teacher');
  }

  void displayTeacherInfo() {
    print('Teacher Information:');
    displayRole();
    print('Name: $name');
    print('Age: $age');
    print('Address: $address');
    print('Courses Taught:');
    for (String course in coursesTaught) {
      print('- $course');
    }
    print('\n');
  }
}

class StudentManagementSystem {
  void run() {
    // Example usage:
    Student student = Student('John Doe', 20, '123 Main St', 12345);
    student.addCourseScore(90.0);
    student.addCourseScore(85.0);
    student.addCourseScore(82.0);
    student.displayStudentInfo();

    Teacher teacher = Teacher('Mrs. Smith', 35, '456 Oak St');
    teacher.addCourse('Math');
    teacher.addCourse('English');
    teacher.addCourse('Bangla');
    teacher.displayTeacherInfo();
  }
}

void main() {
  StudentManagementSystem().run();
}
