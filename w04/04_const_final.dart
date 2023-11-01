void main(List<String> args) {
  var a1 = 1;
  int a2 = 1;
  final int a3 = 1;
//final tanımlarsak değer sadece 1 kez değer alır yani değiştirilemez
//a3=4; yaparsak error verir.
const int a4 = 1;
// const direkt değer almak zorundadır ve hiç değişmezler (finalden farklıdır.)(örnekte int ekledik)
//a4=4; yaparsak error verir.

final Student s1 = Student(id:1 , fullName: "Ahmet");
s1.id = 2;
//burada final adresi fixleri yani aynı adrese başka obje atayamayız.
//s1 = student(id:2 , fullName : "Ayşe") error
Student s3= Student(id : 1 , fullName:"aydin");

Student s4= Student(id : 1 , fullName:"aydin");

print(s3==s4); // adresler farklı olduğu için false olur 

}


class Student {
  int? id;
  String? fullName;
  Student({required this.id, required this.fullName}){}
  void m(){ }
}