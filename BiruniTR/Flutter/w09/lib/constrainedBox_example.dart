import 'package:flutter/material.dart';

class constrainedBoxExample extends StatelessWidget {
  const constrainedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ConstrainedBox"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
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
