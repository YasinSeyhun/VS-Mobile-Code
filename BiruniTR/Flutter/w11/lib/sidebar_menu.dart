import 'package:flutter/material.dart';
import 'package:w11/ana_menu.dart';

class sideBarMenuPageMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer = çekmece
      drawer: AnaMenu(),
      appBar: AppBar(
        title: Text("SideBarMenuMainPage"),
      ),
      body: Center(
        child: Text("Home Page"),
      ),
    );
  }
}

class sideBarMenuPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AnaMenu(),
      appBar: AppBar(
        title: Text("SideBarMenuPage1"),
      ),
    );
  }
}

class sideBarMenuPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AnaMenu(),
      appBar: AppBar(
        title: Text("SideBarMenuPage2"),
      ),
    );
  }
}

class sideBarMenuPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AnaMenu(),
      appBar: AppBar(
        title: Text("SideBarMenuPage3"),
      ),
    );
  }
}
