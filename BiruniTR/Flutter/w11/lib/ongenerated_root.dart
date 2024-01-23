import 'package:flutter/material.dart';

class onGeneratedRouteMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("onGeneratedRouteMain"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("onGeneratedPage1");
                },
                child: Text("Go to Page1")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("onGeneratedPage2");
                },
                child: Text("Go to Page2")),
          ],
        ),
      ),
    );
  }
}

class onGeneratedRoutePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("onGeneratedRoutePage1"),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Go to Main")),
      ),
    );
  }
}

class onGeneratedRoutePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("onGeneratedRoutePage2"),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Go to Main")),
      ),
    );
  }
}
