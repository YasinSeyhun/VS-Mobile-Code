void main(List<String> args) {
  


Student s1= Student(id: 1, fullName: "Aydin");
Student s2= Student(id: 2, fullName: "yasin");
Student s3= Student(id: 1, fullName: "Aydin");

print(s1==s3);
print(s1==s3);



}
//immutable
class Student {
  const Student({required this.id, required this.fullName});
  //immutable
  final int id;
  final String fullName;
}

//IMMUTABLE- DEĞİŞTİRELEMEZ NESNELER


/*
class Student {
  final id;
  final fullName;
  Student({required this.id, required this.fullName}){}
  void m(){ }
}
*/