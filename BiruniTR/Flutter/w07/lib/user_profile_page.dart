// containers and design widgets

// Kullanacağımız Araçlar(Widgetler)
//Container ,center, column , row, inkwell(tıklanma özelliği)

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyAppUserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "User Profile",
      theme: ThemeData(primaryColor: Colors.blue),
      home: UserProfileScreen(),
    );
  }
}

class UserProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.white, Colors.black26],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                    "https://scontent-sof1-2.cdninstagram.com/v/t51.2885-19/413445565_204287746089333_7289499902905512450_n.jpg?stp=dst-jpg_s150x150&_nc_ht=scontent-sof1-2.cdninstagram.com&_nc_cat=109&_nc_ohc=gfekWrwnewkAX9X4eyY&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfBbiEQMyxL5x-dnJmOERAqgkb1T6ZHtTmjdLF1tA5hiSg&oe=65A5E024&_nc_sid=8b3546"),
              ),
              SizedBox(
                height: 23,
              ),
              Text(
                "User Name",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 23,
              ),
              Text(
                "Short Bio",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 23,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      print("Home Icon was clicked");
                    },
                    child: Column(
                      children: [
                        Icon(Icons.add_home_work_sharp, size: 50),
                        Text(
                          "Home",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    onTap: () {
                      print("Message Icon was clicked");
                    },
                    child: Column(
                      children: [
                        Icon(Icons.message_rounded, size: 50),
                        Text(
                          "Message",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    onTap: () {
                      print("Cafe Icon was clicked");
                    },
                    child: Column(
                      children: [
                        Icon(Icons.local_cafe, size: 50),
                        Text(
                          "Cafe",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    onTap: () {
                      print("Setting Icon was clicked");
                    },
                    child: Column(
                      children: [
                        Icon(Icons.settings, size: 50),
                        Text(
                          "Settings",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
