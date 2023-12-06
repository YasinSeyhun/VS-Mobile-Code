//container widgets
//Flex widget
//flex sayfayı parçalara bölmeyi sağlar
import 'package:flutter/material.dart';

class FlexExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) { // ilk çalışan yer build
    return Scaffold(
      appBar: AppBar(title: Text("Flexible"),),
      body: Column(
        children: [
          Flexible(
            flex: 9,
            child: Container(
            color: Colors.red,
            child: Row(
              children: [
                Flexible(
            flex: 50,
            child: Container(
            color: Colors.green,
            child: Text("Flex inner1" , style: TextStyle(fontSize: 25),),
            alignment: Alignment.center,
            width: double.infinity //infinity sonsuz genişlik,
          ),
          ),
          Flexible(
            flex: 15,
            child: Container(
            color: Colors.black,
            child: Text("Flex inner2" , style: TextStyle(fontSize: 25),),
            alignment: Alignment.center,
            width: double.infinity //infinity sonsuz genişlik,
          ),
          ),
              ],
            ),
          ),
          ),
          Flexible(
            flex: 15,
            child: Container(
            color: Colors.yellow,
            child: Text("Flex 2" , style: TextStyle(fontSize: 25),),
            alignment: Alignment.center,
            width: double.infinity //infinity sonsuz genişlik,
          ),
          ),
          Flexible(
            flex: 12,
            child: Container(
            color: Colors.blue,
            child: Text("Flex 3" , style: TextStyle(fontSize: 25),),
            alignment: Alignment.center,
            width: double.infinity //infinity sonsuz genişlik,
          ),
          ),
        ],
      ),
    );
  }
}