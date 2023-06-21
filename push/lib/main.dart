import 'package:flutter/material.dart';
import 'package:push/pages/home.dart';
import 'package:push/pages/screen1.dart';
import 'package:push/pages/screen2.dart';
import 'package:push/pages/screen3.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Home.route,
      routes: {
        Home.route: (c) => Home(),
        Screen1.route: (c) => Screen1(),
        Screen2.route: (c) => Screen2(),
        Screen3.route: (c) => Screen3(),
      },
    );
  }
}
