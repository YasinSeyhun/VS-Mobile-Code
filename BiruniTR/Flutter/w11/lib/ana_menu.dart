import 'package:flutter/material.dart';

class AnaMenu extends StatelessWidget {
  const AnaMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            DrawerHeader(
              child: Text(
                "Ana Menü",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              decoration: BoxDecoration(color: Colors.black),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "sideBarMenuPage1");
                },
                child: Text("Page1")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "sideBarMenuPage2");
                },
                child: Text("Page2")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "sideBarMenuPage3");
                },
                child: Text("Page3")),
          ],
        ),
      ),
    );
  }
}
