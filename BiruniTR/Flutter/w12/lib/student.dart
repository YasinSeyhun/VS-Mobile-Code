class Student {
  int id;
  String firstName;
  String lastName;
  int departmant_id;

//json = key value

  Student(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.departmant_id});

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "firstName": firstName,
      "lastName": lastName,
      "departmant_id": departmant_id,
    };
  }

  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
      id: map["id"],
      firstName: map["firstName"],
      lastName: map["lastName"],
      departmant_id: map["departmant_id"],
    );
  }
}
