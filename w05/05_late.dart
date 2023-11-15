import '../w03/ogrenci.dart';

void main(List<String> args) {
 Student o1 = Student(1);
o1.id = 1;

print(o1.id);
}

class Student{

 /* int? id; //riskli
  String? adi; //riskli */

  late int id; //late kullanımı biraz daha risklidir.çünkü garanti veriyoruz ama biz unutursak program patlar.
  late String adi;

  /*late*/ final int deparment; //finalde değer vermemiz lazımdı ama late kullanarak garanti verdik.
  Student(this.deparment){  // bu işlem risksiz bi işlemdir kodda bi sıkıntı olmaz.

  }

}