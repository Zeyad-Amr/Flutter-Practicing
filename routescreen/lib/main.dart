import 'package:flutter/material.dart';
import 'package:routescreen/pages/home.dart';
import 'package:routescreen/pages/second.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Home.route,
      routes: {
        Home.route: (context) => Home(),
        Second.route: (context) => Second()
      },
    );
  }
}
