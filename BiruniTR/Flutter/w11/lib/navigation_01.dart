import 'package:flutter/material.dart';

class Navigation01MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text("Navigation-01 Home"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return Navigation01Page1();
                },
              ));
            },
            child: Text("Go to Page 1")),
      ),
    );
  }
}

class Navigation01Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text("Navigation-01 Page 1"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Back")),
      ),
    );
  }
}
