import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Page2 extends StatelessWidget {
  static final route = '/page2';
  String name;
  int age;
  Page2({this.name, this.age});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Name $name'),
            Text('Age $age'),
          ],
        ),
      ),
    );
  }
}
