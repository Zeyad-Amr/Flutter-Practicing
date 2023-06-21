import 'package:flutter/material.dart';
import 'package:route2/student.dart';

class Page1 extends StatelessWidget {
  static final route = '/page1';
  @override
  Widget build(BuildContext context) {
    Student s = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Name ${s.name}'),
            Text('Age ${s.age}'),
          ],
        ),
      ),
    );
  }
}
