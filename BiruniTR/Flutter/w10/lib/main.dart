import 'package:flutter/material.dart';
import 'package:w10/assets_example.dart';
import 'package:w10/card_example.dart';
import 'package:w10/context_example.dart';
import 'package:w10/dropdow_menu_example.dart';
import 'package:w10/grid_view_example.dart';
import 'package:w10/list_view_example.dart';
import 'package:w10/list_view_example_student.dart';
import 'package:w10/static_list_view_example.dart';
import 'package:w10/popup_menu_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Week 10',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true
      ),
      home: GridViewExampleForStudent(),
    );
  }
}
