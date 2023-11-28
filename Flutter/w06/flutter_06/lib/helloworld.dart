import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    /* uygulama içindeki debug etiketini siler. */
    theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity),
    home: myScaffold(),
  ));
}

Scaffold myScaffold() {
  return Scaffold(
    //backgroundColor:colors.grey,
    appBar: AppBar(
      //backgroundColor:color.red,
      title: Text("Griris"),
      actions: [
        Text("Logout"),
        ElevatedButton(onPressed: () {}, child: Text("Tikla"))
      ],
    ),
    body: Giris(),
    bottomNavigationBar: BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Sayfa 2"),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Sayfa1"),
      ],
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.add),
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
  );
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello World!"),
        ),
        body: Text(
          "Login Ekrani",
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}

class Giris extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("Merhaba Dünya!");
  }
}
