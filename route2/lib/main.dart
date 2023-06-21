import 'package:flutter/material.dart';
import 'package:route2/pages/home.dart';
import 'package:route2/pages/page1.dart';
import 'package:route2/pages/page2.dart';
import 'package:route2/student.dart';

main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Home.route,
      onGenerateRoute: (settings) {
        if (settings.name == Page2.route) {
          Student s = settings.arguments;
          return MaterialPageRoute(
            builder: (context) => Page2(
              name: s.name,
              age: s.age,
            ),
          );
        }
      },
      routes: {
        Home.route: (context) => Home(),
        Page1.route: (context) => Page1(),
        Page2.route: (context) => Page2(),
      },
    );
  }
}
