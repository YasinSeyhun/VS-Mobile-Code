import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:w12/student.dart';

// singleton class
//Singleton deseni, bir sınıfın tek bir örneğini sağlayarak, bu örneğe global
//bir erişim noktası sunar. Bu sayede uygulama genelinde paylaşılan bir durumu
//veya kaynağı yönetmek için kullanılabilir.

//VERİTABANI ERİŞİMİ KODLARI
class SchoolRepository1 {
  static SchoolRepository1 _instance = SchoolRepository1.internal();

  factory SchoolRepository1() => _instance;

  SchoolRepository1.internal();

  Database? _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }

    _database = await _initDb();
    return _database!;
  }

  Future<Database> _initDb() async {
    var documentDirectory = await getDatabasesPath();
    var path = join(documentDirectory, "school.db");

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        db.execute(
            "CREATE TABLE students(id INTEGER PRIMARY KEY AUTOINCREMENT,firstName TEXT,lastName TEXT,departmant_id INTEGER)");
      },
    );
  }

//CRUD(OKU-YAZ-SİL-GÜNCELLE) KODLARI

  Future<int> addStudent(Student student) async {
    var db = await database;

    return await db.insert('students', student.toMap());
  }

  Future<List<Student>> getStudents() async {
    var db = await database;

    var students = await db.query('students');
    //map listesi döner.student listesi dönmesi lazım

    return List.generate(students.length, (index) {
      return Student.fromMap(students[index]);
    });
  }

  Future<int> updateStudent(Student student) async {
    var db = await database;

    return await db.update('students', student.toMap(),
        where: "id=?", whereArgs: [student.id]);
  }

  Future<void> deleteStudent(int id) async {
    var db = await database;

    await db.delete('students', where: "id=?", whereArgs: [id]);
  }
}
