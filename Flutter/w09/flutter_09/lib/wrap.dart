//rastgele elemanlarda kullanılır.wrap nesnesi otomatik olarak sıralar.

import 'package:flutter/material.dart';

class WrapExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WrapExample"),
      ),
      body: Wrap(
        children: [
          Chip(
            avatar: CircleAvatar(
              radius: 65,
              backgroundColor: Colors.red,
            child: Text("A1"),
            ),
            label: Text("Ch1"),
            ),
             Chip(
            avatar: CircleAvatar(
              radius: 65,
              backgroundColor: Colors.red,
            child: Text("A1"),
            ),
            label: Text("Ch1"),
            ),
             Chip(
            avatar: CircleAvatar(
              radius: 65,
              backgroundColor: Colors.red,
            child: Text("A1"),
            ),
            label: Text("Ch1"),
            ),
             Chip(
            avatar: CircleAvatar(
              radius: 65,
              backgroundColor: Colors.red,
            child: Text("A1"),
            ),
            label: Text("Ch1"),
            ),
             Chip(
            avatar: CircleAvatar(
              radius: 65,
              backgroundColor: Colors.red,
            child: Text("A1"),
            ),
            label: Text("Ch1"),
            ),
             Chip(
            avatar: CircleAvatar(
              radius: 65,
              backgroundColor: Colors.red,
            child: Text("A1"),
            ),
            label: Text("Ch1"),
            ),
             Chip(
            avatar: CircleAvatar(
              radius: 65,
              backgroundColor: Colors.red,
            child: Text("A1"),
            ),
            label: Text("Ch1"),
            ),
             Chip(
            avatar: CircleAvatar(
              radius: 65,
              backgroundColor: Colors.red,
            child: Text("A1"),
            ),
            label: Text("Ch1"),
            ),
        ],
      ),
    );
  }
}