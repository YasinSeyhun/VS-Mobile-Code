import 'package:flutter/material.dart';
import 'package:w12/school_repository1.dart';
import 'package:w12/student.dart';

class StudentPage1 extends StatefulWidget {
  const StudentPage1({super.key});

  @override
  State<StudentPage1> createState() => _StudentPage1State();
}

class _StudentPage1State extends State<StudentPage1> {
  var repository = SchoolRepository1();
  List<Student> _students = [];

  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var departmant_IdController = TextEditingController();

//öğrencileri getirecek
  _loadStudents() async {
    _students = await repository.getStudents();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    repository.addStudent(Student(
        id: 23, firstName: "Yasin", lastName: "Seyhun", departmant_id: 24));

    _loadStudents();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Students"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: _students.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
                _students[index].firstName + " " + _students[index].lastName),
            subtitle: Text(_students[index].departmant_id.toString()),
            trailing: IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
          );
        },
      ),
    );
  }
}
