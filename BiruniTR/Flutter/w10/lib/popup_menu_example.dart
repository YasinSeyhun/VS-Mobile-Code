import 'package:flutter/material.dart';

class popUpMenuExample extends StatefulWidget {
  const popUpMenuExample({super.key});

  @override
  State<popUpMenuExample> createState() => _popUpMenuExampleState();
}

class _popUpMenuExampleState extends State<popUpMenuExample> {
  Map<String, Color> colors = {
    "Kırmızı": Colors.red,
    "Sarı": Colors.yellow,
    "Mavi": Colors.blue,
    "Siyah": Colors.black,
    "Beyaz": Colors.white
  };
  Color selectedColor = Colors.white;
  String selectedItem = "Beyaz";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pop-up Menu"),
        backgroundColor: Colors.blueAccent,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
        actions: [
          PopupMenuButton(
            onSelected: (_selectedItem) {
              setState(() {
                selectedItem = _selectedItem;
              });
            },
            itemBuilder: (context) {
              return colors.keys.map((key) {
                return PopupMenuItem(value: key, child: Text(key));
              }).toList();
            },
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "Kaydet",
              style: TextStyle(color: colors[selectedItem], fontSize: 15),
            ),
          ),
          // ElevatedButton.icon(
          //   onPressed: () {},
          //   icon: build(context),
          //   label: build(context),
          // ),
        ],
      ),
      body: Container(
        color: colors[selectedItem],
      ),
    );
  }
}
