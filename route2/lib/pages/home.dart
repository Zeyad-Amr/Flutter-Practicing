import 'package:flutter/material.dart';
import 'package:route2/pages/page1.dart';
import 'package:route2/pages/page2.dart';
import 'package:route2/student.dart';

class Home extends StatelessWidget {
  static final route = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  Page1.route,
                  arguments: Student(name: 'Zeyad Amr', age: 20),
                );
              },
              child: Text('Go to Page 1'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  Page2.route,
                  arguments: Student(name: 'Mohamed Bomba', age: 18),
                );
              },
              child: Text('Go to Page 2'),
            ),
          ],
        ),
      ),
    );
  }
}
