import 'package:flutter/material.dart';

class flexExample extends StatelessWidget {
  const flexExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FlexExample"),
      ),
      body: Column(
        children: [
          Flexible(
            flex: 75,
            child: Container(
              color: Colors.red,
              child: Row(
                children: [
                  Flexible(
                    flex: 80,
                    child: Container(
                      color: Colors.brown,
                      child:
                          Text("Flex Inner1", style: TextStyle(fontSize: 25)),
                      alignment: Alignment.center,
                      //width: Alignment.center,
                    ),
                  ),
                  Flexible(
                    flex: 20,
                    child: Container(
                      color: Colors.brown,
                      child:
                          Text("Flex Inner2", style: TextStyle(fontSize: 25)),
                      alignment: Alignment.center,
                      //width: double.infinity,
                    ),
                  ),
                ],
              ),
              alignment: Alignment.center,
              //width:double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
