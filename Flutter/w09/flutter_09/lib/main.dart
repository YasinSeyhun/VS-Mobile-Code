import 'package:flutter/material.dart';
import 'package:flutter_09/aspect_ratio.dart';
import 'package:flutter_09/constrainedbox_example.dart';
import 'package:flutter_09/flex_example.dart';
import 'package:flutter_09/stack_example.dart';
import 'package:flutter_09/wrap.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Week 9',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: RegistrationForm(),
    );
  }
}