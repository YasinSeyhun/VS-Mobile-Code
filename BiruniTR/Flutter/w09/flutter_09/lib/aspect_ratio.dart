import 'package:flutter/material.dart';

class AspectRatioExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AspectRatio"),
      ),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9, //daha çok videolarda kullanılır.
            child: Container(
              color: Colors.red,
              //yasin seyhun
            ),
          ),
        ],
      ),
    );
  }
}
