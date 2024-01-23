import 'package:flutter/material.dart';
import 'package:w11/named_route.dart';
import 'package:w11/navigation_01.dart';
import 'package:w11/ongenerated_root.dart';
import 'package:w11/sidebar_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Week11 Application',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: sideBarMenuPageMain(),
      // onGenerateRoute: _onGeneratedRoute,
      //NAMED ROUTE
      // initialRoute: "/",
      // routes: {
      //   "NamedRouteMain": (context) => NamedRouteMain(),
      //   "NamedRoutePage1": (context) => NamedRoutePage1(),
      //   "NamedRoutePage2": (context) => NamedRoutePage2(),
      // },

      initialRoute: "/",
      routes: {
        "Main": (context) => sideBarMenuPageMain(),
        "sideBarMenuPage1": (context) => sideBarMenuPage1(),
        "sideBarMenuPage2": (context) => sideBarMenuPage2(),
        "sideBarMenuPage3": (context) => sideBarMenuPage3(),
      },
    );
  }

  Route<dynamic>? _onGeneratedRoute(RouteSettings settings) {
    switch (settings.name) {
      case "onGeneratedRouteMain":
        return MaterialPageRoute(
          builder: (context) => onGeneratedRouteMain(),
        );

      case "onGeneratedPage1":
        return MaterialPageRoute(
          builder: (context) => onGeneratedRoutePage1(),
        );

      case "onGeneratedRoutePage2":
        return MaterialPageRoute(
          builder: (context) => onGeneratedRoutePage2(),
        );

      default:
    }
  }
}
