import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:w12/shared_preferences_example.dart';
import 'package:w12/students_page_1.dart';

// bool isAuth = false;
void main() async {
  // WidgetsFlutterBinding.ensureInitialized();

  // var database = await SharedPreferences.getInstance();

  // isAuth = database.getBool("isAuth") ?? false;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: StudentPage1(),
      //isAuth ? homePage() : LoginPage(),
      // routes: {
      //   "HomePage": (context) => homePage(),
      // },
    );
  }
}
