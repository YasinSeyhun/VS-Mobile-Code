import 'package:flutter/material.dart';

class Sayfa2 extends StatelessWidget {
  const Sayfa2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          //color: Colors.amber,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.amber,
          ),
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(left: 50, top: 25),
          child: Text(
            "Merhaba",
            style: TextStyle(fontSize: 35),
          ),
        ),
      ),
    );
  }
}
