import 'package:flutter/material.dart';

void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override // miras alınan bir nesne sınıfı zorunlu olarak ezer.
  Widget build(BuildContext context) {
    // build inşa etmek . ekrana çizim görevi vardır.
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        //backgroundColor: Colors.black26,
        appBar: AppBar(
          //backgroundColor: Colors.blue,
          title: Text('Giriş Ekranı'),
          actions: [
            ElevatedButton(onPressed: () {}, child: Text("Press")),
          ],
        ),
        body: Text(
          "Login Ekranı",
          style: TextStyle(fontSize: 30),
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Anasayfa",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_alarm_rounded),
            label: "Alarm",
          ),
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      ),
    );
  }
}
