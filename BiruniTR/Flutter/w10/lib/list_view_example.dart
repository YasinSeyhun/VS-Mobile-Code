import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Card Example"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            return getCard("$index. Köpek");
          },
        ),
      ),
    );
  }

  Card getCard(String title) {
    return Card(
      elevation: 8.0, //gölge verir.
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/image1.jpg"),
            ),
            title: Text("Evcil Hayvan,${title}"),
            subtitle: Text("Dostlarımızı sahiplenelim"),
            trailing: Icon(Icons.wallet_giftcard),
          ),
          Container(
            padding: EdgeInsets.all(15),
            alignment: Alignment.centerLeft,
            child: Text("açıklama-açıklama-açıklama"),
          ),
          ButtonBar(
            children: [
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Detay Gör",
                    style: TextStyle(color: Colors.black),
                  )),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "İletişim Kur",
                    style: TextStyle(color: Colors.black),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
