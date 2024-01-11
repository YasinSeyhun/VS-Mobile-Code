import 'package:flutter/material.dart';

class Sayfa1 extends StatelessWidget {
  const Sayfa1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("non container widgets"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "merhaba",
              style: TextStyle(fontSize: 36),
            ),
            Text(
              "merhaba",
              style: TextStyle(fontSize: 36),
            ),
            ElevatedButton(onPressed: () {}, child: Text("Press")),
            Switch(value: true, onChanged: (value) {}),
            Checkbox(value: false, onChanged: (value) {}),
            Radio(value: true, groupValue: 1, onChanged: (value) {}),
            Slider(value: .5, onChanged: (value) {}),
            TextField(),
            Divider(),
            SizedBox(), //bosluk yaratmak için
            Divider(),
          ],
        ),
      ),
    );
  }
}
// elevatedbutton noncontainer 
//image noncontainer child yok 
//text noncontainer yani child yok.
// columns ve rows child i olan bir containerdir.
// child bir tane widgets alırken children bir dizi widgets alıyor.

//columns ve rows un (container)içine noncontainerleri yazıyoruz. 