import 'package:flutter/material.dart';
import 'package:route/routes/home.dart';
import 'package:route/routes/second.dart';
import 'package:route/routes/third.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /*  home: Home(), */

      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => Home(),
        '/second': (context) => Second(),
        '/third': (context) => Third(),
      },
    );
  }
}
