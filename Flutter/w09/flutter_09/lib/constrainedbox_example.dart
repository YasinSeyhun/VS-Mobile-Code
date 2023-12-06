import 'package:flutter/material.dart';

class ConstainerBoxExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ConstrainedBox"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ConstrainedBox(constraints: BoxConstraints(
            minHeight: 50,
            maxHeight: 150,
            maxWidth: 50,
          ),
          child: Container(
            color: Colors.amber,
          ),
          ),
        ],
      ),
    );
  }
}