import 'package:flutter/material.dart';

class assetsExmaple extends StatelessWidget {
  const assetsExmaple({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/image1.jpg",
                  width: 150,
                  height: 150,
                ),
                SizedBox(
                  width: 11,
                ),
                Image.asset(
                  "assets/images/image2.jpg",
                  width: 150,
                  height: 150,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/image3.jpg",
                  width: 150,
                  height: 150,
                ),
                SizedBox(
                  width: 11,
                ),
                Image.asset(
                  "assets/images/image4.jpg",
                  width: 150,
                  height: 150,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
