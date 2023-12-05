abstract class Role {
  void displayRole();
}

class Student implements Role {
  @override
  void displayRole() {
    print('Role: Student');
  }
}

class Teacher implements Role {
  @override
  void displayRole() {
    print('Role: Teacher');
  }
}

void main() {
  var teacher = Teacher();
  teacher.displayRole();

  var student = Student();
  student.displayRole();

}
