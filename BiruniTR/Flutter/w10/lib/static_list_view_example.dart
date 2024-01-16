import 'package:flutter/material.dart';

class StaticListViewExample extends StatelessWidget {
  const StaticListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Card Example"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            getCard("Labrador"),
            getCard("Kangal"),
            getCard("Pitbull"),
            getCard("Labrador"),
            getCard("Kangal"),
            getCard("Pitbull"),
            getCard("Labrador"),
            getCard("Kangal"),
            getCard("Pitbull"),
            getCard("Labrador"),
            getCard("Kangal"),
            getCard("Pitbull"),
          ],
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
